import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_string.dart';

class SelectLanguageAppBarView extends StatelessWidget {
  const SelectLanguageAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        AppString.selectLanguage,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).canPop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }
}
