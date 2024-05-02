import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String errorMessage;

  const ErrorView({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        errorMessage,
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
