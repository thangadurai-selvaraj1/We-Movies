import 'package:flutter/material.dart';

import 'index.dart';

extension DesignSystemExtension on ThemeData {
  Sizing get sizing => extension<Sizing>() ?? const Sizing();

  Spacing get spacing => extension<Spacing>() ?? const Spacing();
}
