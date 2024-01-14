import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_colors.dart';
import 'package:translate_app/core/utils/app_string.dart';

class TranslateApp extends StatelessWidget {
  const TranslateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData(
          useMaterial3: false,
          appBarTheme: AppBarTheme(backgroundColor: AppColor.mainColor)),
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
