import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:translate_app/feature/home/data/model/available_language.dart';
import 'package:translate_app/feature/home/data/model/language.dart';

part 'translator_state.dart';

class TranslatorCubit extends Cubit<TranslatorState> {
  TranslatorCubit._() : super(TranslatorInitial());

  static TranslatorCubit? _instance;
  bool selectFirstLanguage = true;

  LanguageModel firstLanguage = AvailableLanguage.availableLanguage[2];
  LanguageModel secondLanguage = AvailableLanguage.availableLanguage[1];
  String currentCode = ' ';
  static TranslatorCubit getInstance() {
    _instance ??= TranslatorCubit._();
    return _instance!;
  }

  String getValueOfRadioGroub() {
    return selectFirstLanguage ? firstLanguage.code : secondLanguage.code;
  }

  void swapTwoLanguage() {
    firstLanguage.replaceContent(secondLanguage);
  }

  void pressedOnFirstLanguage() {
    selectFirstLanguage = true;
  }

  void pressedOnSecondLanguage() {
    selectFirstLanguage = false;
  }

  void selectLanguage({required String code}) {
    currentCode = code;
    if (selectFirstLanguage) {
      _selectFirstLanguage();
    } else {
      _selectSecondLanguage();
    }
    emit(SelectLanguageState());
  }

  void _selectFirstLanguage() {
    for (LanguageModel item in AvailableLanguage.availableLanguage) {
      if (item.code == currentCode) {
        firstLanguage = item;
        break;
      }
    }
  }

  void _selectSecondLanguage() {
    for (LanguageModel item in AvailableLanguage.availableLanguage) {
      if (item.code == currentCode) {
        secondLanguage = item;
        break;
      }
    }
  }
}
