import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'translator_state.dart';

class TranslatorCubit extends Cubit<TranslatorState> {
  TranslatorCubit._() : super(TranslatorInitial());
  static TranslatorCubit? _instance;

  static TranslatorCubit getInstance() {
    _instance ??= TranslatorCubit._();
    return _instance!;
  }
}
