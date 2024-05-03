import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/index.dart';
import 'package:movie_app/data/models/index.dart';

import '../../../../domain/repo/index.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesNowPlayingBloc extends Bloc<MoviesEvent, MoviesNowPlayingState> {
  final HomeRepo homeRepo;
  int page = 1;

  MoviesNowPlayingBloc(this.homeRepo) : super(MoviesNowPlayingInitial()) {
    on<NowPlayingMoviesEvent>(getNowPlayingMovies);
    on<ResetEvent>(resetData);
    on<LoadMoreEvent>(loadMore);
  }

  void getNowPlayingMovies(MoviesEvent event, Emitter emit) async {
    emit(MoviesNowPlayingLoadingState());
    final result = await homeRepo.getNowPlayingMovies(page);
    switch (result) {
      case Success():
        return emit(MoviesNowPlayingSuccessState(result.value.results));
      case Failure():
        return emit(MoviesNowPlayingFailureState(result.exception.toString()));
    }
  }

  void loadMore(MoviesEvent event, Emitter emit) async {
    page++;
    final result = await homeRepo.getNowPlayingMovies(page);
    switch (result) {
      case Success():
        if (state is MoviesNowPlayingSuccessState) {
          final preResult = (state as MoviesNowPlayingSuccessState).results;
          return emit(
            MoviesNowPlayingSuccessState(
              [...?preResult, ...?result.value.results],
            ),
          );
        }
      case Failure():
        return emit(MoviesNowPlayingFailureState(result.exception.toString()));
    }
  }

  void resetData(MoviesEvent event, Emitter emit) {
    emit(MoviesNowPlayingInitial());
    page = 1;
  }
}

class MoviesTopRatedBloc extends Bloc<MoviesEvent, MoviesTopRatedState> {
  final HomeRepo homeRepo;
  int page = 1;

  MoviesTopRatedBloc(this.homeRepo) : super(MoviesTopRatedInitial()) {
    on<TopRatedMoviesEvent>(getTopRatedMovies);
    on<ResetEvent>(resetData);
    on<LoadMoreEvent>(loadMore);
  }

  void getTopRatedMovies(MoviesEvent event, Emitter emit) async {
    emit(MoviesTopRatedLoadingState());
    final result = await homeRepo.getTopRatedMovies(page);
    switch (result) {
      case Success():
        return emit(MoviesTopRatedSuccessState(result.value.results));
      case Failure():
        return emit(MoviesTopRatedFailureState(result.exception.toString()));
    }
  }

  void loadMore(MoviesEvent event, Emitter emit) async {
    page++;
    final result = await homeRepo.getTopRatedMovies(page);
    switch (result) {
      case Success():
        if (state is MoviesTopRatedSuccessState) {
          final preResult = (state as MoviesTopRatedSuccessState).results;
          return emit(
            MoviesTopRatedSuccessState(
              [...?preResult, ...?result.value.results],
            ),
          );
        }
      case Failure():
        return emit(MoviesTopRatedFailureState(result.exception.toString()));
    }
  }

  void resetData(MoviesEvent event, Emitter emit) {
    emit(MoviesTopRatedInitial());
    page = 1;
  }
}
