import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  void pushNamed({
    required String path,
  }) {
    Navigator.pushNamed(this, path);
  }

  void pushReplacementNamed({
    required String path,
  }) {
    Navigator.pushReplacementNamed(this, path);
  }

  double get currentWidth => MediaQuery.sizeOf(this).width;
}
