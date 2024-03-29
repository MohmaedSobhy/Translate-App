import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:translate_app/core/theme/app_theme.dart';
import 'package:translate_app/core/utils/app_string.dart';
import 'package:translate_app/feature/home/presentation/controller/translator_cubit.dart';
import 'package:translate_app/feature/home/presentation/screens/select_language_screen.dart';

class TranslateApp extends StatelessWidget {
  const TranslateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TranslatorCubit.getInstance(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppString.appName,
        theme: AppTheme.appTheme,
        home: const SelectLanguageScreen(),
      ),
    );
  }
}
