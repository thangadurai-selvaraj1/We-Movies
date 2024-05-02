import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class PagerIndicator extends StatelessWidget {
  final bool isActive;
  final int? activePageNumber;
  final int? totalNumber;

  const PagerIndicator({
    super.key,
    this.isActive = false,
    this.activePageNumber,
    this.totalNumber,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (isActive) {
      return Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: theme.spacing.s8,
              vertical: theme.spacing.s4,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurface,
              borderRadius: BorderRadius.circular(
                theme.spacing.s16,
              ),
            ),
            child: Text(
              "${activePageNumber ?? 0}/${totalNumber ?? 0}",
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onTertiary,
              ),
            ),
          ),
          SizedBox(
            width: theme.sizing.s2,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Container(
            height: theme.sizing.s3,
            width: theme.sizing.s3,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurface,
              borderRadius: BorderRadius.circular(
                theme.spacing.s16,
              ),
            ),
          ),
          SizedBox(
            width: theme.sizing.s2,
          ),
        ],
      );
    }
  }
}
