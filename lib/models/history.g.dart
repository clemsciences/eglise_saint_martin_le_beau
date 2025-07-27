// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryEvent _$HistoryEventFromJson(Map<String, dynamic> json) => HistoryEvent(
  timestamp: DateTime.parse(json['timestamp'] as String),
  endTimestamp: json['endTimestamp'] == null
      ? null
      : DateTime.parse(json['endTimestamp'] as String),
  duration: json['duration'] == null
      ? null
      : Duration(microseconds: (json['duration'] as num).toInt()),
  text: json['text'] as String,
  isImportant: json['isImportant'] as bool,
);

Map<String, dynamic> _$HistoryEventToJson(HistoryEvent instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'duration': instance.duration?.inMicroseconds,
      'endTimestamp': instance.endTimestamp?.toIso8601String(),
      'text': instance.text,
      'isImportant': instance.isImportant,
    };
