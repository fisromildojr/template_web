import 'package:flutter/material.dart';
import 'package:template_web/theme/my_colors.dart';

class MyTheme {
  static final lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    primaryColor: MyColors.primaryColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: MyColors.primaryColor,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          MyColors.primaryColor,
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: MyColors.textLight,
          ),
        ),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: MyColors.textLight,
          ),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: MyColors.primaryColor),
  );

  static final darkTheme = ThemeData.dark(
    useMaterial3: true,
  );
}
