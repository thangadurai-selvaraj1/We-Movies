import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: s204,
      height: s204,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: theme.spacing.s2,
            color: theme.colorScheme.onSurface,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: theme.sizing.s50,
                height: theme.sizing.s50,
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                weWork,
                style: theme.textTheme.displaySmall?.copyWith(
                  fontSize: theme.sizing.s8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
