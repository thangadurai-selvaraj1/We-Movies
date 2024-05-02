import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class NowPlaying extends StatelessWidget {
  final String rating;
  final String movieName;
  final String movieDescription;
  final String viewsCount;
  final String votes;
  final String language;
  final String? url;

  const NowPlaying({
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
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: theme.spacing.s20,
          ),
          height: s350,
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
              errorWidget: (context, url, error) => const Center(
                child: Icon(
                  Icons.error,
                ),
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  theme.spacing.s16,
                ),
              ),
              margin: EdgeInsets.only(
                right: theme.spacing.s20,
              ),
              height: s350,
              padding: EdgeInsets.symmetric(
                horizontal: theme.spacing.s8,
                vertical: theme.spacing.s16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconsRow(
                      theme: theme, rating: rating, viewsCount: viewsCount),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.all(
                      theme.spacing.s16,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        language,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onTertiary,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      theme.spacing.s16,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onSurface.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(
                        theme.spacing.s16,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieName,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onTertiary,
                          ),
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
                              color: theme.colorScheme.onTertiary,
                              size: theme.sizing.s5,
                            ),
                            SizedBox(
                              width: theme.sizing.base,
                            ),
                            Expanded(
                              child: Text(
                                movieDescription,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  color: theme.colorScheme.onTertiary,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: theme.sizing.s2,
                        ),
                        Text(
                          votes,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: theme.colorScheme.onTertiary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

Widget iconsRow({
  required ThemeData theme,
  required String rating,
  required String viewsCount,
}) {
  return Row(
    children: [
      SizedBox(
        width: theme.sizing.base,
      ),
      Text(
        rating,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onTertiary,
        ),
      ),
      SizedBox(
        width: theme.sizing.base,
      ),
      Icon(
        Icons.star,
        color: theme.colorScheme.onTertiary,
        size: theme.sizing.s5,
      ),
      const Spacer(),
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.s8,
          vertical: theme.spacing.s4,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.onSurface.withOpacity(0.5),
          borderRadius: BorderRadius.circular(
            theme.spacing.s16,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.remove_red_eye_outlined,
              color: theme.colorScheme.onTertiary,
              size: theme.sizing.s5,
            ),
            SizedBox(
              width: theme.sizing.base,
            ),
            Text(
              viewsCount,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onTertiary,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: theme.sizing.s4,
      ),
      Container(
        padding: EdgeInsets.all(theme.spacing.s4),
        decoration: BoxDecoration(
          color: theme.colorScheme.onSurface.withOpacity(0.5),
          borderRadius: BorderRadius.circular(
            theme.spacing.s16,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.heart_broken_outlined,
              color: theme.colorScheme.onTertiary,
              size: theme.sizing.s5,
            ),
          ],
        ),
      ),
      SizedBox(
        width: theme.sizing.s4,
      ),
    ],
  );
}
