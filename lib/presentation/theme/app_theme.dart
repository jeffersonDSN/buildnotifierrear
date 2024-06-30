import '../theme/app_color.dart';
import '../theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData mainTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: _appBarTheme,
    colorScheme: _colorScheme,
    inputDecorationTheme: _inputDecorationTheme,
    cardTheme: _cardTheme,
    textTheme: _textTheme,
    listTileTheme: _listTileTheme,
    filledButtonTheme: _filledButtonThemeData,
    outlinedButtonTheme: _outlinedButtonThemeData,
    floatingActionButtonTheme: _floatingActionButtonThemeData,
    scrollbarTheme: _scrollbarThemeData,
  );
}

AppBarTheme get _appBarTheme => const AppBarTheme(
      backgroundColor: AppColor.lightColor,
      titleTextStyle: TextStyle(
        color: AppColor.primaryColorSwatch,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        size: 24,
      ),
    );

ColorScheme get _colorScheme => ColorScheme.fromSeed(
      seedColor: AppColor.primaryColorSwatch,
      primary: AppColor.primaryColorSwatch,
      background: AppColor.backgroundColor,
    );

InputDecorationTheme get _inputDecorationTheme => const InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: AppColor.lightColor,
      prefixIconColor: AppColor.primaryColorSwatch,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Sizes.size4,
          ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Sizes.size4,
          ),
        ),
        borderSide: BorderSide(
          color: AppColor.primaryColorSwatch,
        ),
      ),
    );

CardTheme get _cardTheme => CardTheme(
      color: AppColor.lightColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColor.primaryColorSwatch.withOpacity(
            .4,
          ),
          width: .5,
        ),
        borderRadius: BorderRadius.circular(
          Sizes.size8,
        ),
      ),
      shadowColor: AppColor.primaryColorSwatch.withOpacity(.1),
    );

TextTheme get _textTheme => const TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
      ),
    );

ListTileThemeData get _listTileTheme => const ListTileThemeData(
      titleTextStyle: TextStyle(
        fontSize: 16,
      ),
      iconColor: Colors.black,
      selectedColor: Colors.black,
      selectedTileColor: AppColor.backgroundColor,
    );

FilledButtonThemeData get _filledButtonThemeData => FilledButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Sizes.size4,
            ),
          ),
        ),
      ),
    );

OutlinedButtonThemeData get _outlinedButtonThemeData => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: AppColor.primaryColorSwatch,
        ),
      ),
    );

FloatingActionButtonThemeData get _floatingActionButtonThemeData =>
    const FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryColorSwatch,
    );

ScrollbarThemeData get _scrollbarThemeData => const ScrollbarThemeData(
      thumbVisibility: WidgetStatePropertyAll(true),
      thumbColor: WidgetStatePropertyAll(AppColor.primaryColorSwatch),
      trackColor: WidgetStatePropertyAll(Colors.grey),
      trackVisibility: WidgetStatePropertyAll(true),
    );

SystemUiOverlayStyle get loginSystemUiOverlayStyle =>
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    );

TextStyle get errorTextStyle => const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColor.red,
    );

TextStyle get titleMediumWarning => _textTheme.titleMedium!.copyWith(
      color: AppColor.warning,
    );
