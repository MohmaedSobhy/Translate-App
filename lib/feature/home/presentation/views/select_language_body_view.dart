import 'package:flutter/material.dart';
import 'package:translate_app/feature/home/data/model/available_language.dart';
import 'package:translate_app/feature/home/presentation/views/select_language_item.dart';

class SelectLanguageBodyView extends StatelessWidget {
  const SelectLanguageBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.02,
      ),
      child: ListView.separated(
        itemCount: AvailableLanguage.availableLanguage.length,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return SelectLanguageItem(
            language: AvailableLanguage.availableLanguage[index],
          );
        },
      ),
    );
  }
}
