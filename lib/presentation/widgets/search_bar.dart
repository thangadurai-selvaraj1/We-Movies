import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class Searchbar extends StatelessWidget {
  final VoidCallback? onTap;
  final String hintText;

  const Searchbar({
    super.key,
    required this.hintText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(theme.spacing.s16),
        decoration: BoxDecoration(
          color: theme.colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(theme.spacing.s16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.search,
            ),
            SizedBox(
              width: theme.sizing.s2,
            ),
            Text(
              hintText,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
