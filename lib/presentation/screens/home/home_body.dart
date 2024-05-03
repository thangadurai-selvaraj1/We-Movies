import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

import '../../widgets/index.dart';
import 'index.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

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
                    moviesCount: /* widget.nowPlayingSuccessState.nowPlaying
                            .results?.length ??*/
                        0,
                  ),
                  SizedBox(
                    height: theme.sizing.s6,
                  ),
                  Header(title: nowPlaying),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  const NowPlayingBody(),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  Header(title: topRated),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  const TopRatedBody(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
