import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/index.dart';
import '../bloc/movies/movies_bloc.dart';
import 'index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      body: RefreshIndicator(
        onRefresh: () async {
          _fetApis();
        },
        child: const HomeBody(),
      ),
    );
  }

  void _fetApis() async {
    context.read<MoviesNowPlayingBloc>().add(NowPlayingMoviesEvent());
    context.read<MoviesTopRatedBloc>().add(TopRatedMoviesEvent());
  }
}
