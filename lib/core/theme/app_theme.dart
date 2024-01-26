import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData(
    useMaterial3: false,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.mainColor,
      titleTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
