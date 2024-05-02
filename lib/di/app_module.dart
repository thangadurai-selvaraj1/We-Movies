import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:movie_app/domain/repo/index.dart';
import 'package:movie_app/presentation/screens/bloc/index.dart';
import 'package:movie_app/presentation/screens/cubit/page_indicator_cubit.dart';

import '../data/network/index.dart';

final di = GetIt.instance;

void setupDI() {
  /// Api Service and Clients
  di.registerLazySingleton<MoviesService>(() => MoviesService());

  di.registerLazySingleton<MoviesClient>(() => MoviesClient());

  /// Bloc
  di.registerLazySingleton<MoviesNowPlayingBloc>(
      () => MoviesNowPlayingBloc(di()));

  di.registerLazySingleton<MoviesTopRatedBloc>(() => MoviesTopRatedBloc(di()));

  di.registerLazySingleton<LocationBloc>(() => LocationBloc());

  di.registerFactory<PageIndicatorCubit>(() => PageIndicatorCubit());

  /// Internet Connection Checker
  di.registerLazySingleton<InternetConnection>(() => InternetConnection());

  /// Repos
  di.registerFactory<HomeRepo>(() => HomeRepoImpl(di()));
}
