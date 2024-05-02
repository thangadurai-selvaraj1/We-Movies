import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class TopRated extends StatelessWidget {
  final String rating;
  final String movieName;
  final String movieDescription;
  final String viewsCount;
  final String votes;
  final String language;
  final String? url;

  const TopRated({
    super.key,
    required this.rating,
    required this.movieName,
    required this.movieDescription,
    required this.viewsCount,
    required this.votes,
    required this.language,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onInverseSurface,
        borderRadius: BorderRadius.circular(
          theme.spacing.s16,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(
              theme.spacing.s8,
            ),
            width: context.currentWidth,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  theme.spacing.s16,
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: placeHolderImage,
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                const Center(
                  child: Icon(
                    Icons.error,
                  ),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(
              theme.spacing.s16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieName,
                  style: theme.textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: theme.sizing.s2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: theme.sizing.s5,
                    ),
                    SizedBox(
                      width: theme.sizing.base,
                    ),
                    Expanded(
                      child: Text(
                        movieDescription,
                        style: theme.textTheme.titleSmall,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: theme.sizing.s2,
                ),
                Row(
                  children: [
                    Text(
                      votes,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: theme.sizing.base,
                    ),
                    const Divider(),
                    Text(
                      rating,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: theme.sizing.base,
                    ),
                    Icon(
                      Icons.star,
                      size: theme.sizing.s8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
