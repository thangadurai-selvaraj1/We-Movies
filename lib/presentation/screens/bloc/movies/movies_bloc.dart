import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/index.dart';
import 'package:movie_app/data/models/index.dart';

import '../../../../domain/repo/index.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesNowPlayingBloc extends Bloc<MoviesEvent, MoviesNowPlayingState> {
  final HomeRepo homeRepo;

  MoviesNowPlayingBloc(this.homeRepo) : super(MoviesNowPlayingInitial()) {
    on<NowPlayingMoviesEvent>(getNowPlayingMovies);
  }

  void getNowPlayingMovies(MoviesEvent event, Emitter emit) async {
    emit(MoviesNowPlayingLoadingState());
    final result = await homeRepo.getNowPlayingMovies();
    switch (result) {
      case Success():
        return emit(MoviesNowPlayingSuccessState(result.value));
      case Failure():
        return emit(MoviesNowPlayingFailureState(result.exception.toString()));
    }
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
        return emit(MoviesTopRatedSuccessState(result.value));
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
          (state as MoviesTopRatedSuccessState)
              .topRated
              .results
              ?.addAll(result.value.results as Iterable<Results>);
          return emit(state);
        }
        return emit(MoviesTopRatedSuccessState(
            (state as MoviesTopRatedSuccessState).topRated));
      case Failure():
        return emit(MoviesTopRatedFailureState(result.exception.toString()));
    }
  }

  void resetData(MoviesEvent event, Emitter emit) {
    emit(MoviesTopRatedInitial());
  }
}
