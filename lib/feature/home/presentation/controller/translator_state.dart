part of 'translator_cubit.dart';

@immutable
sealed class TranslatorState {}

final class TranslatorInitial extends TranslatorState {}

final class SelectLanguageState extends TranslatorState {}
