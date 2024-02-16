class LanguageModel {
  String image;
  String code;
  String language;

  LanguageModel(
      {required this.code, required this.image, required this.language});

  factory LanguageModel.from() {
    return LanguageModel(code: '', image: '', language: '');
  }

  void replaceContent(LanguageModel second) {
    String codeTemp = second.code;
    second.code = code;
    code = codeTemp;

    String languageTemp = second.language;
    second.language = language;
    language = languageTemp;

    String imageTemp = second.image;
    second.image = image;
    image = imageTemp;
  }
}
