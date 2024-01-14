import 'package:flutter/material.dart';

class TranslateApp extends StatelessWidget {
  const TranslateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Translate App',
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}
