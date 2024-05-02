import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          title,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(
          width: theme.sizing.s4,
        ),
        const Expanded(child: Divider()),
        SizedBox(
          width: theme.sizing.s4,
        ),
      ],
    );
  }
}
