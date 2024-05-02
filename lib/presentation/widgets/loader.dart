import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: theme.spacing.s8,
      ),
    );
  }
}
