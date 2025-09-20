// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceTranslationExtract _$SourceTranslationExtractFromJson(
  Map<String, dynamic> json,
) => SourceTranslationExtract(
  originText: (json['origin'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  translatedText: (json['translation'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SourceTranslationExtractToJson(
  SourceTranslationExtract instance,
) => <String, dynamic>{
  'origin': instance.originText,
  'translation': instance.translatedText,
};

SourceTranslation _$SourceTranslationFromJson(Map<String, dynamic> json) =>
    SourceTranslation(
      originLanguage: $enumDecode(_$LanguageEnumMap, json['origin_language']),
      destinationLanguage: $enumDecode(
        _$LanguageEnumMap,
        json['destination_language'],
      ),
      title: json['title'] as String,
      edition: json['edition'] as String,
      collector: json['collector'] as String,
      publicationYear: (json['publication_year'] as num).toInt(),
      textName: json['text_name'] as String,
      author: json['author'] as String,
      estimatedDate: json['estimated_date'] as String,
      extracts: (json['extracts'] as List<dynamic>)
          .map(
            (e) => SourceTranslationExtract.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$SourceTranslationToJson(SourceTranslation instance) =>
    <String, dynamic>{
      'origin_language': _$LanguageEnumMap[instance.originLanguage]!,
      'destination_language': _$LanguageEnumMap[instance.destinationLanguage]!,
      'title': instance.title,
      'edition': instance.edition,
      'collector': instance.collector,
      'publication_year': instance.publicationYear,
      'text_name': instance.textName,
      'author': instance.author,
      'estimated_date': instance.estimatedDate,
      'extracts': instance.extracts,
    };

const _$LanguageEnumMap = {
  Language.latin: 'latina',
  Language.french: 'français',
};
