import 'package:translate_app/core/utils/app_assest.dart';
import 'package:translate_app/feature/home/data/model/language.dart';

abstract class AvailableLanguage {
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
