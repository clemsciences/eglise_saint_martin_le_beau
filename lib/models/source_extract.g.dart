// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_extract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceBookExtract _$SourceBookExtractFromJson(Map<String, dynamic> json) =>
    SourceBookExtract(
      source: SourceEntity.fromJson(json['source'] as Map<String, dynamic>),
      page: (json['page'] as num).toInt(),
      url: json['url'] as String?,
      description: json['description'] as String?,
      internalReference: json['internalReference'] as String,
    );

Map<String, dynamic> _$SourceBookExtractToJson(SourceBookExtract instance) =>
    <String, dynamic>{
      'source': instance.source,
      'page': instance.page,
      'url': instance.url,
      'description': instance.description,
      'internalReference': instance.internalReference,
    };
