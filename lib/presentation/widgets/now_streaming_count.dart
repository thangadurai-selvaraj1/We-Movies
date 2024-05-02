import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class NowStreaming extends StatelessWidget {
  final String currentDate;
  final int moviesCount;

  const NowStreaming({
    super.key,
    required this.currentDate,
    required this.moviesCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: context.currentWidth / 3,
                    ),
                    Expanded(
                      child: Container(
                        height: theme.spacing.s40,
                        width: context.currentWidth,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onInverseSurface,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              theme.spacing.s16,
                            ),
                            topRight: Radius.circular(
                              theme.spacing.s16,
                            ),
                            bottomRight: Radius.circular(
                              theme.spacing.s16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: theme.spacing.s80,
                        width: context.currentWidth,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onInverseSurface,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              theme.spacing.s16,
                            ),
                            bottomLeft: Radius.circular(
                              theme.spacing.s16,
                            ),
                            bottomRight: Radius.circular(
                              theme.spacing.s16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: theme.sizing.s8,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: theme.spacing.s16,
                vertical: theme.spacing.s8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentDate,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: theme.sizing.s4,
                  ),
                  Text(
                    weMovies,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: theme.sizing.base,
                  ),
                  Text(
                    "$moviesCount $moviesAreLoaded",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
