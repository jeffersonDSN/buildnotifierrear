import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const primaryColorSwatch = MaterialColor(
    0xff1190CB,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFCEF9FC),
      200: Color(0xFF9EEEF9),
      300: Color(0xFF6BD6EF),
      400: Color(0xFF46B9DF),
      500: Color(0xFF1190CB),
      600: Color(0xFF0C70AE),
      700: Color(0xFF085492),
      800: Color(0xFF053C75),
      900: Color(0xFF032A61),
    },
  );

  static const secondaryColorSwatch = MaterialColor(
    0xff0B141F,
    <int, Color>{
      50: Color(0xFFF3F4F6),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFACAFC6),
      300: Color(0xFFACAFC6),
      400: Color(0xFF72798B),
      500: Color(0xFF72798B),
      600: Color(0xFF242D3A),
      700: Color(0xFF242D3A),
      800: Color(0xFF0B141F),
      900: Color(0xFF0B141F),
    },
  );

  static const greyColorSwatch = MaterialColor(
    0xffBAC1CB,
    <int, Color>{
      50: Color(0xFFF8F8F8),
      100: Color(0xFFEFF2F6),
      200: Color(0xFFE8ECF1),
      300: Color(0xFFD7DDE4),
      400: Color(0xFFBAC1CB),
      500: Color(0xffAFB9C6),
      600: Color(0xFF919CA8),
      700: Color(0xFF68737E),
      800: Color(0xFF38414B),
      900: Color(0xFF1D252E),
    },
  );

  static const backgroundColor = Color(0xFFF3F3F3);

  static const lightColor = Colors.white;

  static const blue = Color(0xff06D1D8);
  static const green = Color(0xff90BF03);
  static const yellow = Color(0xffFFDD58);
  static const orange = Color(0xffF9980E);
  static const red = Color(0xffFF2D2D);

  static const success = MaterialColor(
    0xff39A81E,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFE5FAD1),
      200: Color(0xFFC7F6A5),
      300: Color(0xFF9AE474),
      400: Color(0xFF6FCA4D),
      500: Color(0xff39A81E),
      600: Color(0xFF249015),
      700: Color(0xFF14780F),
      800: Color(0xFF09610C),
      900: Color(0xFF05500D),
    },
  );

  static const info = MaterialColor(
    0xff018C8E,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFC7F9E9),
      200: Color(0xFF92F3DC),
      300: Color(0xFF59DDC8),
      400: Color(0xFF2FBBB1),
      500: Color(0xff018C8E),
      600: Color(0xFF006D7A),
      700: Color(0xFF005366),
      800: Color(0xFF003C52),
      900: Color(0xFF002B44),
    },
  );

  static const warning = MaterialColor(
    0xffC69100,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFFCF4C9),
      200: Color(0xFFF9E695),
      300: Color(0xFFEDCF5F),
      400: Color(0xFFDCB537),
      500: Color(0xffC69100),
      600: Color(0xFFAA7700),
      700: Color(0xFF8E6000),
      800: Color(0xFF724A00),
      900: Color(0xFF5F3B00),
    },
  );

  static const error = MaterialColor(
    0xff8E2A16,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFF9E3CF),
      200: Color(0xFFF3C1A1),
      300: Color(0xFFDD906C),
      400: Color(0xFFBB6144),
      500: Color(0xff8E2A16),
      600: Color(0xFF7A1910),
      700: Color(0xFF660C0B),
      800: Color(0xFF52070B),
      900: Color(0xFF44040D),
    },
  );

  /// Gradient for search bar
  static Gradient get searchGradient => const LinearGradient(
        stops: [0.0, 0.5, 0.5, 1.0],
        colors: [
          AppColor.primaryColorSwatch,
          AppColor.primaryColorSwatch,
          Colors.white,
          Colors.white,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
