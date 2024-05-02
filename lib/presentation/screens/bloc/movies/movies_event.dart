part of 'movies_bloc.dart';

@immutable
sealed class MoviesEvent {}

class NowPlayingMoviesEvent extends MoviesEvent {}

class TopRatedMoviesEvent extends MoviesEvent {}

class ResetEvent extends MoviesEvent {}

class LoadMoreEvent extends MoviesEvent {}
