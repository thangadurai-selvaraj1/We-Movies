import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff8d4e2c),
      surfaceTint: Color(0xff8d4e2c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbcb),
      onPrimaryContainer: Color(0xff341100),
      secondary: Color(0xff765849),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcb),
      onSecondaryContainer: Color(0xff2c160b),
      tertiary: Color(0xff656031),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffece4aa),
      onTertiaryContainer: Color(0xff1f1c00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff221a16),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a16),
      surfaceVariant: Color(0xfff4ded5),
      onSurfaceVariant: Color(0xff52443d),
      outline: Color(0xff85736c),
      outlineVariant: Color(0xffd7c2b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inverseOnSurface: Color(0xffffede6),
      inversePrimary: Color(0xffffb692),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff341100),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff703717),
      secondaryFixed: Color(0xffffdbcb),
      onSecondaryFixed: Color(0xff2c160b),
      secondaryFixedDim: Color(0xffe6beac),
      onSecondaryFixedVariant: Color(0xff5c4033),
      tertiaryFixed: Color(0xffece4aa),
      onTertiaryFixed: Color(0xff1f1c00),
      tertiaryFixedDim: Color(0xffd0c890),
      onTertiaryFixedVariant: Color(0xff4c481c),
      surfaceDim: Color(0xffe8d7d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6b3313),
      surfaceTint: Color(0xff8d4e2c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa8633f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff583d2f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8e6d5e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff484418),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7c7645),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff221a16),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a16),
      surfaceVariant: Color(0xfff4ded5),
      onSurfaceVariant: Color(0xff4e4039),
      outline: Color(0xff6c5c54),
      outlineVariant: Color(0xff89776f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inverseOnSurface: Color(0xffffede6),
      inversePrimary: Color(0xffffb692),
      primaryFixed: Color(0xffa8633f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8a4b29),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8e6d5e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745547),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7c7645),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff625d2f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d7d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff3f1600),
      surfaceTint: Color(0xff8d4e2c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b3313),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff331d11),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff583d2f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff262300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff484418),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff221a16),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff4ded5),
      onSurfaceVariant: Color(0xff2d211b),
      outline: Color(0xff4e4039),
      outlineVariant: Color(0xff4e4039),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe7dd),
      primaryFixed: Color(0xff6b3313),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4f1e01),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff583d2f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f271b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff484418),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff312d04),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d7d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb692),
      surfaceTint: Color(0xffffb692),
      onPrimary: Color(0xff542103),
      primaryContainer: Color(0xff703717),
      onPrimaryContainer: Color(0xffffdbcb),
      secondary: Color(0xffe6beac),
      onSecondary: Color(0xff432a1e),
      secondaryContainer: Color(0xff5c4033),
      onSecondaryContainer: Color(0xffffdbcb),
      tertiary: Color(0xffd0c890),
      onTertiary: Color(0xff353107),
      tertiaryContainer: Color(0xff4c481c),
      onTertiaryContainer: Color(0xffece4aa),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a120e),
      onBackground: Color(0xfff0dfd8),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfff0dfd8),
      surfaceVariant: Color(0xff52443d),
      onSurfaceVariant: Color(0xffd7c2b9),
      outline: Color(0xffa08d85),
      outlineVariant: Color(0xff52443d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inverseOnSurface: Color(0xff382e2a),
      inversePrimary: Color(0xff8d4e2c),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff341100),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff703717),
      secondaryFixed: Color(0xffffdbcb),
      onSecondaryFixed: Color(0xff2c160b),
      secondaryFixedDim: Color(0xffe6beac),
      onSecondaryFixedVariant: Color(0xff5c4033),
      tertiaryFixed: Color(0xffece4aa),
      onTertiaryFixed: Color(0xff1f1c00),
      tertiaryFixedDim: Color(0xffd0c890),
      onTertiaryFixedVariant: Color(0xff4c481c),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff423732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a16),
      surfaceContainer: Color(0xff271e19),
      surfaceContainerHigh: Color(0xff322823),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbc9b),
      surfaceTint: Color(0xffffb692),
      onPrimary: Color(0xff2c0d00),
      primaryContainer: Color(0xffc97e58),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc2b0),
      onSecondary: Color(0xff251107),
      secondaryContainer: Color(0xffad8978),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd4cc94),
      onTertiary: Color(0xff191700),
      tertiaryContainer: Color(0xff98925f),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a120e),
      onBackground: Color(0xfff0dfd8),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfffff9f8),
      surfaceVariant: Color(0xff52443d),
      onSurfaceVariant: Color(0xffdcc6bd),
      outline: Color(0xffb29f96),
      outlineVariant: Color(0xff917f77),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inverseOnSurface: Color(0xff322824),
      inversePrimary: Color(0xff723818),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff240900),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff5b2707),
      secondaryFixed: Color(0xffffdbcb),
      onSecondaryFixed: Color(0xff1f0c03),
      secondaryFixedDim: Color(0xffe6beac),
      onSecondaryFixedVariant: Color(0xff4a3023),
      tertiaryFixed: Color(0xffece4aa),
      onTertiaryFixed: Color(0xff141100),
      tertiaryFixedDim: Color(0xffd0c890),
      onTertiaryFixedVariant: Color(0xff3b370d),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff423732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a16),
      surfaceContainer: Color(0xff271e19),
      surfaceContainerHigh: Color(0xff322823),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb692),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbc9b),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc2b0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf2),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd4cc94),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a120e),
      onBackground: Color(0xfff0dfd8),
      surface: Color(0xff1a120e),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff52443d),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffdcc6bd),
      outlineVariant: Color(0xffdcc6bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4b1b00),
      primaryFixed: Color(0xffffe1d3),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbc9b),
      onPrimaryFixedVariant: Color(0xff2c0d00),
      secondaryFixed: Color(0xffffe1d3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc2b0),
      onSecondaryFixedVariant: Color(0xff251107),
      tertiaryFixed: Color(0xfff1e8ae),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd4cc94),
      onTertiaryFixedVariant: Color(0xff191700),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff423732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a16),
      surfaceContainer: Color(0xff271e19),
      surfaceContainerHigh: Color(0xff322823),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
