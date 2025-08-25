enum Language {
  latin,
  french
}

class SourceTranslationExtract {
  final List<String> originText;
  final List<String> translatedText;

  SourceTranslationExtract({
    required this.originText,
    required this.translatedText
  });
}

 class SourceTranslation {

   final Language originLanguage;
   final Language destinationLanguage;

  // region
  final String title;
  final String edition;
  final String collector;
  final int publicationYear;
  // endregion

  // region
  final String textName;
  final String author;
  final String estimatedDate;
  // endregion

  final List<SourceTranslationExtract> extracts;

  SourceTranslation({
    required this.originLanguage, required this.destinationLanguage,
    required this.title, required this.edition,
    required this.collector,
    required this.publicationYear,
    required this.textName,
    required this.author,
    required this.estimatedDate,
    required this.extracts
  });


 }