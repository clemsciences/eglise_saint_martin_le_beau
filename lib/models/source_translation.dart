import 'package:json_annotation/json_annotation.dart';

part 'source_translation.g.dart';

@JsonEnum()
enum Language {
  @JsonValue("latina")
  latin,
  @JsonValue("français")
  french,
}

@JsonSerializable()
class SourceTranslationExtract {
  @JsonKey(name: "origin")
  final List<String> originText;

  @JsonKey(name: "translation")
  final List<String> translatedText;

  SourceTranslationExtract({
    required this.originText,
    required this.translatedText,
  });

  factory SourceTranslationExtract.fromJson(Map<String, dynamic> json) =>
      _$SourceTranslationExtractFromJson(json);

  Map<String, dynamic> toJson() => _$SourceTranslationExtractToJson(this);
}

@JsonSerializable()
class SourceTranslation {
  @JsonKey(name: "origin_language")
  final Language originLanguage;
  @JsonKey(name: "destination_language")
  final Language destinationLanguage;

  // region
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "edition")
  final String edition;
  @JsonKey(name: "collector")
  final String collector;
  @JsonKey(name: "publication_year")
  final int publicationYear;

  // endregion

  // region
  @JsonKey(name: "text_name")
  final String textName;
  @JsonKey(name: "author")
  final String author;
  @JsonKey(name: "estimated_date")
  final String estimatedDate;

  // endregion

  @JsonKey(name: "extracts")
  final List<SourceTranslationExtract> extracts;

  SourceTranslation({
    required this.originLanguage,
    required this.destinationLanguage,
    required this.title,
    required this.edition,
    required this.collector,
    required this.publicationYear,
    required this.textName,
    required this.author,
    required this.estimatedDate,
    required this.extracts,
  });

  factory SourceTranslation.fromJson(Map<String, dynamic> json) =>
      _$SourceTranslationFromJson(json);

  Map<String, dynamic> toJson() => _$SourceTranslationToJson(this);
}
