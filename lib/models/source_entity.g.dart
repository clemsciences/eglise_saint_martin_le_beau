// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceEntity _$SourceEntityFromJson(Map<String, dynamic> json) => SourceEntity(
  title: json['title'] as String,
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
  url: json['url'] as String?,
  authors: (json['authors'] as List<dynamic>)
      .map((e) => Author.fromJson(e as Map<String, dynamic>))
      .toList(),
  publisher: json['publisher'] as String?,
  publicationYear: json['publicationYear'] as String?,
  description: json['description'] as String?,
  officialDescription: json['officialDescription'] as String?,
);

Map<String, dynamic> _$SourceEntityToJson(SourceEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'timestamp': instance.timestamp?.toIso8601String(),
      'url': instance.url,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publicationYear': instance.publicationYear,
      'description': instance.description,
      'officialDescription': instance.officialDescription,
    };
