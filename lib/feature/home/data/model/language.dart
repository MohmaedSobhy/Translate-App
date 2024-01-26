class LanguageModel {
  final String image;
  final String code;
  final String language;

  LanguageModel(
      {required this.code, required this.image, required this.language});

  factory LanguageModel.from() {
    return LanguageModel(code: '', image: '', language: '');
  }
}
