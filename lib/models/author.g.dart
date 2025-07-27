// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  title: json['title'] as String?,
  birthday: json['birthday'] == null
      ? null
      : DateTime.parse(json['birthday'] as String),
);

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'title': instance.title,
  'birthday': instance.birthday?.toIso8601String(),
};
