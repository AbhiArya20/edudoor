import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287253093),
      surfaceTint: Color(4287253093),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957541),
      onPrimaryContainer: Color(4281927457),
      secondary: Color(4285749089),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957541),
      onSecondaryContainer: Color(4280947998),
      tertiary: Color(4286469431),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958277),
      onTertiaryContainer: Color(4281340928),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965496),
      onSurface: Color(4280359196),
      onSurfaceVariant: Color(4283515719),
      outline: Color(4286804856),
      outlineVariant: Color(4292199111),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806385),
      inversePrimary: Color(4294947022),
      primaryFixed: Color(4294957541),
      onPrimaryFixed: Color(4281927457),
      primaryFixedDim: Color(4294947022),
      onPrimaryFixedVariant: Color(4285412173),
      secondaryFixed: Color(4294957541),
      onSecondaryFixed: Color(4280947998),
      secondaryFixedDim: Color(4292984265),
      onSecondaryFixedVariant: Color(4284104521),
      tertiaryFixed: Color(4294958277),
      onTertiaryFixed: Color(4281340928),
      tertiaryFixedDim: Color(4294032534),
      onTertiaryFixedVariant: Color(4284694050),
      surfaceDim: Color(4293318362),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963443),
      surfaceContainer: Color(4294634221),
      surfaceContainerHigh: Color(4294239464),
      surfaceContainerHighest: Color(4293844962),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285149001),
      surfaceTint: Color(4287253093),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288962683),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283776069),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287327351),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284365342),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288113483),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965496),
      onSurface: Color(4280359196),
      onSurfaceVariant: Color(4283187012),
      outline: Color(4285160288),
      outlineVariant: Color(4287002491),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806385),
      inversePrimary: Color(4294947022),
      primaryFixed: Color(4288962683),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287055971),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287327351),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285551710),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288113483),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286272309),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293318362),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963443),
      surfaceContainer: Color(4294634221),
      surfaceContainerHigh: Color(4294239464),
      surfaceContainerHighest: Color(4293844962),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282519080),
      surfaceTint: Color(4287253093),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285149001),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281474084),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283776069),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281867011),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284365342),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965496),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281082149),
      outline: Color(4283187012),
      outlineVariant: Color(4283187012),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806385),
      inversePrimary: Color(4294960877),
      primaryFixed: Color(4285149001),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283373875),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283776069),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282197551),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284365342),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282656011),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293318362),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963443),
      surfaceContainer: Color(4294634221),
      surfaceContainerHigh: Color(4294239464),
      surfaceContainerHighest: Color(4293844962),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947022),
      surfaceTint: Color(4294947022),
      onPrimary: Color(4283637046),
      primaryContainer: Color(4285412173),
      onPrimaryContainer: Color(4294957541),
      secondary: Color(4292984265),
      onSecondary: Color(4282460723),
      secondaryContainer: Color(4284104521),
      onSecondaryContainer: Color(4294957541),
      tertiary: Color(4294032534),
      onTertiary: Color(4282984718),
      tertiaryContainer: Color(4284694050),
      onTertiaryContainer: Color(4294958277),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279832852),
      onSurface: Color(4293844962),
      onSurfaceVariant: Color(4292199111),
      outline: Color(4288515217),
      outlineVariant: Color(4283515719),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293844962),
      inversePrimary: Color(4287253093),
      primaryFixed: Color(4294957541),
      onPrimaryFixed: Color(4281927457),
      primaryFixedDim: Color(4294947022),
      onPrimaryFixedVariant: Color(4285412173),
      secondaryFixed: Color(4294957541),
      onSecondaryFixed: Color(4280947998),
      secondaryFixedDim: Color(4292984265),
      onSecondaryFixedVariant: Color(4284104521),
      tertiaryFixed: Color(4294958277),
      onTertiaryFixed: Color(4281340928),
      tertiaryFixedDim: Color(4294032534),
      onTertiaryFixedVariant: Color(4284694050),
      surfaceDim: Color(4279832852),
      surfaceBright: Color(4282398522),
      surfaceContainerLowest: Color(4279438351),
      surfaceContainerLow: Color(4280359196),
      surfaceContainer: Color(4280687904),
      surfaceContainerHigh: Color(4281346090),
      surfaceContainerHighest: Color(4282135093),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948561),
      surfaceTint: Color(4294947022),
      onPrimary: Color(4281467419),
      primaryContainer: Color(4291066776),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293312973),
      onSecondary: Color(4280553496),
      secondaryContainer: Color(4289300627),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294295706),
      onTertiary: Color(4280815616),
      tertiaryContainer: Color(4290152293),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279832852),
      onSurface: Color(4294965753),
      onSurfaceVariant: Color(4292462283),
      outline: Color(4289765027),
      outlineVariant: Color(4287594372),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293844962),
      inversePrimary: Color(4285543502),
      primaryFixed: Color(4294957541),
      onPrimaryFixed: Color(4281008150),
      primaryFixedDim: Color(4294947022),
      onPrimaryFixedVariant: Color(4284097340),
      secondaryFixed: Color(4294957541),
      onSecondaryFixed: Color(4280158995),
      secondaryFixedDim: Color(4292984265),
      onSecondaryFixedVariant: Color(4282920760),
      tertiaryFixed: Color(4294958277),
      onTertiaryFixed: Color(4280290304),
      tertiaryFixedDim: Color(4294032534),
      onTertiaryFixedVariant: Color(4283444755),
      surfaceDim: Color(4279832852),
      surfaceBright: Color(4282398522),
      surfaceContainerLowest: Color(4279438351),
      surfaceContainerLow: Color(4280359196),
      surfaceContainer: Color(4280687904),
      surfaceContainerHigh: Color(4281346090),
      surfaceContainerHighest: Color(4282135093),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947022),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294948561),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293312973),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294295706),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279832852),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292462283),
      outlineVariant: Color(4292462283),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293844962),
      inversePrimary: Color(4283110960),
      primaryFixed: Color(4294959080),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294948561),
      onPrimaryFixedVariant: Color(4281467419),
      secondaryFixed: Color(4294959080),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293312973),
      onSecondaryFixedVariant: Color(4280553496),
      tertiaryFixed: Color(4294959566),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294295706),
      onTertiaryFixedVariant: Color(4280815616),
      surfaceDim: Color(4279832852),
      surfaceBright: Color(4282398522),
      surfaceContainerLowest: Color(4279438351),
      surfaceContainerLow: Color(4280359196),
      surfaceContainer: Color(4280687904),
      surfaceContainerHigh: Color(4281346090),
      surfaceContainerHighest: Color(4282135093),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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
