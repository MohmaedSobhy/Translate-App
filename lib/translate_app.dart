import 'package:flutter/material.dart';
import 'package:translate_app/core/theme/app_theme.dart';
import 'package:translate_app/core/utils/app_string.dart';
import 'package:translate_app/feature/home/presentation/screens/home_screen.dart';

class TranslateApp extends StatelessWidget {
  const TranslateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}
