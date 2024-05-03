part of 'movies_bloc.dart';

@immutable
sealed class MoviesNowPlayingState {}

@immutable
sealed class MoviesTopRatedState {}

final class MoviesNowPlayingInitial extends MoviesNowPlayingState {}

final class MoviesNowPlayingSuccessState extends MoviesNowPlayingState {
  final List<Results>? results;

  MoviesNowPlayingSuccessState(this.results);
}

final class MoviesNowPlayingFailureState extends MoviesNowPlayingState {
  final String error;

  MoviesNowPlayingFailureState(this.error);
}

final class MoviesNowPlayingLoadingState extends MoviesNowPlayingState {}


final class MoviesTopRatedInitial extends MoviesTopRatedState {}

final class MoviesTopRatedSuccessState extends MoviesTopRatedState {
  final List<Results>? results;

  MoviesTopRatedSuccessState(this.results);
}

final class MoviesTopRatedFailureState extends MoviesTopRatedState {
  final String error;

  MoviesTopRatedFailureState(this.error);
}

final class MoviesTopRatedLoadingState extends MoviesTopRatedState {}
