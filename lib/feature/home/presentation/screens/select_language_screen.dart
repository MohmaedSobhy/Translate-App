import 'package:flutter/material.dart';

import 'package:translate_app/feature/home/presentation/views/select_language_app_bar_view.dart';
import 'package:translate_app/feature/home/presentation/views/select_language_body_view.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          MediaQuery.sizeOf(context).height * 0.10,
        ),
        child: const SelectLanguageAppBarView(),
      ),
      body: const SelectLanguageBodyView(),
    );
  }
}
