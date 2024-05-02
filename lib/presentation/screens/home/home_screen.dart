import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/screens/home/home_body.dart';

import '../../widgets/index.dart';
import '../bloc/movies/movies_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _fetApis();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      body: RefreshIndicator(
        onRefresh: () async {
          _fetApis();
        },
        child: BlocConsumer<MoviesNowPlayingBloc, MoviesNowPlayingState>(
          listenWhen: (p, c) => c.runtimeType == MoviesNowPlayingFailureState,
          listener: (context, state) {
            if (state is MoviesNowPlayingFailureState) {
              var snackBar = SnackBar(content: Text(state.error));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            switch (state) {
              case MoviesNowPlayingSuccessState():
                return HomeBody(nowPlayingSuccessState: state);
              case MoviesNowPlayingFailureState():
                return ErrorView(errorMessage: state.error);
              case MoviesNowPlayingLoadingState():
                return const Loader();
              case MoviesNowPlayingInitial():
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  void _fetApis() async {
    context.read<MoviesNowPlayingBloc>().add(NowPlayingMoviesEvent());
  }
}
