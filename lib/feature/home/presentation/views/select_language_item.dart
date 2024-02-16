import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:translate_app/core/utils/app_colors.dart';
import 'package:translate_app/feature/home/data/model/language.dart';
import 'package:translate_app/feature/home/presentation/controller/translator_cubit.dart';
import 'package:translate_app/feature/home/presentation/widgets/country_widget.dart';

class SelectLanguageItem extends StatelessWidget {
  final LanguageModel language;
  const SelectLanguageItem({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TranslatorCubit, TranslatorState>(
      builder: (context, state) {
        return ListTile(
          onTap: () {
            TranslatorCubit.getInstance().selectLanguage(code: language.code);
          },
          title: CountryWidget(
            imagePath: language.image,
            languageName: language.languageName,
          ),
          trailing: Radio(
            value: language.code,
            groupValue: TranslatorCubit.getInstance().getValueOfRadioGroub(),
            onChanged: (value) {
              TranslatorCubit.getInstance().selectLanguage(code: language.code);
            },
            activeColor: AppColor.mainColor,
          ),
        );
      },
    );
  }
}
