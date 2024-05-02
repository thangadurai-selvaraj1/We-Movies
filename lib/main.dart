import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/screens/bloc/index.dart';
import 'package:movie_app/presentation/screens/index.dart';

import 'core/index.dart';
import 'di/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di<LocationBloc>()),
        BlocProvider(create: (_) => di<MoviesNowPlayingBloc>()),
        BlocProvider(create: (_) => di<MoviesTopRatedBloc>()),
        BlocProvider(create: (_) => di<PageIndicatorCubit>()),
      ],
      child: const MovieApp(),
    ),
  );
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    final darkScheme = MaterialTheme.darkScheme().toColorScheme();
    final lightScheme = MaterialTheme.lightScheme().toColorScheme();
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: lightScheme,
        useMaterial3: true,
        scaffoldBackgroundColor: lightScheme.background,
      ),
      darkTheme: ThemeData(
        colorScheme: darkScheme,
        useMaterial3: true,
        scaffoldBackgroundColor: darkScheme.background,
      ),
      routes: routes,
      home: const SplashScreen(),
    );
  }
}
