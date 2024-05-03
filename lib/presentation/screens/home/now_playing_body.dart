import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/index.dart';
import '../../widgets/index.dart';
import '../bloc/movies/movies_bloc.dart';
import '../index.dart';

class NowPlayingBody extends StatefulWidget {
  const NowPlayingBody({super.key});

  @override
  State<NowPlayingBody> createState() => _NowPlayingBodyState();
}

class _NowPlayingBodyState extends State<NowPlayingBody> {
  final scrollController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    context.read<MoviesNowPlayingBloc>().add(NowPlayingMoviesEvent());
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        context.read<MoviesNowPlayingBloc>().add(LoadMoreEvent());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<MoviesNowPlayingBloc, MoviesNowPlayingState>(
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
            return Column(
              children: [
                SizedBox(
                  height: s350,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      final cubit = context.read<PageIndicatorCubit>();
                      cubit.updateIndicator(index);
                    },
                    itemBuilder: (ctx, index) {
                      final result = state.results?[index];
                      return NowPlaying(
                        rating: "${result?.popularity ?? ""}",
                        movieName: result?.title ?? "",
                        movieDescription: result?.overview ?? "",
                        viewsCount: "${result?.voteAverage ?? " "}",
                        votes: "${result?.voteCount ?? ""} $votes",
                        language: result?.originalLanguage ?? "",
                        url: result?.posterPath,
                      );
                    },
                    itemCount: state.results?.length ?? 0,
                    padEnds: false,
                    controller: scrollController,
                  ),
                ),
                SizedBox(
                  height: theme.sizing.s2,
                ),
                BlocBuilder<PageIndicatorCubit, int>(
                  builder: (context, pageNumber) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const PagerIndicator(),
                        SizedBox(
                          height: theme.sizing.s4,
                        ),
                        PagerIndicator(
                          isActive: true,
                          activePageNumber: pageNumber,
                          totalNumber: state.results?.length ?? 0,
                        ),
                        const PagerIndicator(),
                      ],
                    );
                  },
                ),
              ],
            );
          case MoviesNowPlayingFailureState():
            return ErrorView(errorMessage: state.error);
          case MoviesNowPlayingLoadingState():
            return const Loader();
          case MoviesNowPlayingInitial():
            return const SizedBox.shrink();
        }
      },
    );
  }
}
