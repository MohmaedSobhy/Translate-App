import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:translate_app/feature/home/data/model/language.dart';

part 'translator_state.dart';

class TranslatorCubit extends Cubit<TranslatorState> {
  TranslatorCubit._() : super(TranslatorInitial());

  static TranslatorCubit? _instance;
  bool selectFirstLanguage = true;

  LanguageModel firstLanguage = LanguageModel.availableLanguage[2];
  LanguageModel secondLanguage = LanguageModel.availableLanguage[1];
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
    for (LanguageModel item in LanguageModel.availableLanguage) {
      if (item.code == currentCode) {
        firstLanguage = item;
        break;
      }
    }
  }

  void _selectSecondLanguage() {
    for (LanguageModel item in LanguageModel.availableLanguage) {
      if (item.code == currentCode) {
        secondLanguage = item;
        break;
      }
    }
  }
}
