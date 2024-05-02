part of 'movies_bloc.dart';

@immutable
sealed class MoviesNowPlayingState {}

@immutable
sealed class MoviesTopRatedState {}

final class MoviesNowPlayingInitial extends MoviesNowPlayingState {}

final class MoviesNowPlayingSuccessState extends MoviesNowPlayingState {
  final NowPlaying nowPlaying;

  MoviesNowPlayingSuccessState(this.nowPlaying);
}

final class MoviesNowPlayingFailureState extends MoviesNowPlayingState {
  final String error;

  MoviesNowPlayingFailureState(this.error);
}

final class MoviesNowPlayingLoadingState extends MoviesNowPlayingState {}


final class MoviesTopRatedInitial extends MoviesTopRatedState {}

final class MoviesTopRatedSuccessState extends MoviesTopRatedState {
  final TopRated topRated;

  MoviesTopRatedSuccessState(this.topRated);
}

final class MoviesTopRatedFailureState extends MoviesTopRatedState {
  final String error;

  MoviesTopRatedFailureState(this.error);
}

final class MoviesTopRatedLoadingState extends MoviesTopRatedState {}
