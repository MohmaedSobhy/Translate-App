import 'package:translate_app/core/utils/app_assest.dart';

class LanguageModel {
  String image;
  String code;
  String languageName;

  LanguageModel(
      {required this.code, required this.image, required this.languageName});

  void replaceContent(LanguageModel second) {
    String codeTemp = second.code;
    second.code = code;
    code = codeTemp;

    String languageTemp = second.languageName;
    second.languageName = languageName;
    languageName = languageTemp;

    String imageTemp = second.image;
    second.image = image;
    image = imageTemp;
  }

  static List<LanguageModel> availableLanguage = [
    LanguageModel(
      code: 'ar',
      image: AppAssests.egyptFlag,
      languageName: 'Egypt',
    ),
    LanguageModel(
      code: 'es',
      image: AppAssests.argentineFlage,
      languageName: 'Argentine',
    ),
    LanguageModel(
      code: 'de',
      image: AppAssests.germanyFlage,
      languageName: 'Germany',
    ),
    LanguageModel(
      code: 'en',
      image: AppAssests.unitedKindomFlage,
      languageName: 'United kindom',
    ),
    LanguageModel(
      code: 'en',
      image: AppAssests.unitedStatesFlage,
      languageName: 'United States',
    ),
    LanguageModel(
      code: 'ru',
      image: AppAssests.russiaFlage,
      languageName: 'Russia',
    ),
    LanguageModel(
      code: 'hi',
      image: AppAssests.indianFlage,
      languageName: 'Indian',
    ),
    LanguageModel(
      code: 'tr',
      image: AppAssests.turkeyFlage,
      languageName: 'Turkey',
    ),
  ];
}
