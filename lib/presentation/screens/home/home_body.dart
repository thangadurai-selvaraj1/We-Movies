import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/index.dart';

import '../../widgets/index.dart';
import '../bloc/index.dart';
import '../index.dart';

class HomeBody extends StatefulWidget {
  final MoviesNowPlayingSuccessState nowPlayingSuccessState;

  const HomeBody({super.key, required this.nowPlayingSuccessState});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final scrollController = ScrollController();

  @override
  void initState() {
    context.read<MoviesTopRatedBloc>().add(TopRatedMoviesEvent());
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
    return Padding(
      padding: EdgeInsets.all(theme.spacing.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Searchbar(
            hintText: searchMoviesByName,
          ),
          SizedBox(
            height: theme.sizing.s6,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  NowStreaming(
                    currentDate: currentDate(),
                    moviesCount: widget.nowPlayingSuccessState.nowPlaying
                            .results?.length ??
                        0,
                  ),
                  SizedBox(
                    height: theme.sizing.s6,
                  ),
                  Header(title: nowPlaying),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  SizedBox(
                    height: s350,
                    child: PageView.builder(
                      onPageChanged: (index) {
                        final cubit = context.read<PageIndicatorCubit>();
                        cubit.updateIndicator(index);
                      },
                      itemBuilder: (ctx, index) {
                        final result = widget
                            .nowPlayingSuccessState.nowPlaying.results?[index];
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
                      itemCount: widget.nowPlayingSuccessState.nowPlaying
                              .results?.length ??
                          0,
                      padEnds: false,
                      controller: PageController(viewportFraction: 0.8),
                    ),
                  ),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  BlocBuilder<PageIndicatorCubit, int>(
                    builder: (context, state) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const PagerIndicator(),
                          PagerIndicator(
                            isActive: true,
                            activePageNumber: state,
                            totalNumber: widget.nowPlayingSuccessState
                                    .nowPlaying.results?.length ??
                                0,
                          ),
                          const PagerIndicator(),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  Header(title: topRated),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  BlocBuilder<MoviesTopRatedBloc, MoviesTopRatedState>(
                    builder: (context, state) {
                      switch (state) {
                        case MoviesTopRatedSuccessState():
                          return ListView.separated(
                            itemBuilder: (ctx, index) {
                              final result = state.topRated.results?[index];
                              return TopRated(
                                rating: "${result?.popularity ?? ""}",
                                movieName: result?.title ?? "",
                                movieDescription: result?.overview ?? "",
                                viewsCount: "${result?.voteAverage ?? " "}",
                                votes: "${result?.voteCount ?? ""} $votes",
                                language: result?.originalLanguage ?? "",
                                url: result?.posterPath,
                              );
                            },
                            itemCount: state.topRated.results?.length ?? 0,
                            controller: scrollController,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: theme.sizing.s4,
                              );
                            },
                          );
                        case MoviesTopRatedFailureState():
                          return ErrorView(errorMessage: state.error);
                        case MoviesTopRatedLoadingState():
                          return const Loader();
                        case MoviesTopRatedInitial():
                          return const SizedBox.shrink();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
