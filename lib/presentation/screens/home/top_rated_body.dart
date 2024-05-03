import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/index.dart';
import '../../widgets/index.dart';
import '../bloc/movies/movies_bloc.dart';

class TopRatedBody extends StatefulWidget {
  const TopRatedBody({super.key});

  @override
  State<TopRatedBody> createState() => _TopRatedBodyState();
}

class _TopRatedBodyState extends State<TopRatedBody> {
  final scrollController = ScrollController();

  @override
  void initState() {
    context.read<MoviesTopRatedBloc>().add(TopRatedMoviesEvent());

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        context.read<MoviesTopRatedBloc>().add(LoadMoreEvent());
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
    return BlocBuilder<MoviesTopRatedBloc, MoviesTopRatedState>(
      builder: (context, state) {
        switch (state) {
          case MoviesTopRatedSuccessState():
            return ListView.separated(
              itemBuilder: (ctx, index) {
                final result = state.results?[index];
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
              itemCount: state.results?.length ?? 0,
              controller: scrollController,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
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
    );
  }
}
