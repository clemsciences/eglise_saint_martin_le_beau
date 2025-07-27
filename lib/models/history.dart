import 'package:historical_timeline/historical_timeline.dart';
import 'package:json_annotation/json_annotation.dart';

part "history.g.dart";

@JsonSerializable()
class HistoryEvent {
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;
  @JsonKey(name: 'duration')
  final Duration? duration;
  @JsonKey(name: 'endTimestamp')
  final DateTime? endTimestamp;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'isImportant')
  final bool isImportant;

  // @JsonKey(name: 'theme')
  // final String theme;
  // @JsonKey(name: 'scale')
  // final String scale;

  HistoryEvent({
    required this.timestamp,
    this.endTimestamp,
    this.duration,
    required this.text,
    required this.isImportant,
    // required this.theme,
    // required this.scale,
  });

  factory HistoryEvent.fromJson(Map<String, dynamic> json) =>
      _$HistoryEventFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryEventToJson(this);

  TimelineItem toTimelineEvent() {
    return TimelineItem(
      timestamp: timestamp,
      precision: DatetimePrecision.year(),
      text: text,
      label: "",
    );
  }
}
