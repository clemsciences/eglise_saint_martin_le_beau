import 'package:json_annotation/json_annotation.dart';

part "church_word_entry.g.dart";

@JsonSerializable()
class ChurchWordEntry {
  @JsonKey(name: 'word')
  final String word;
  @JsonKey(name: 'definition')
  final String definition;

  ChurchWordEntry({required this.word, required this.definition});

  factory ChurchWordEntry.fromJson(Map<String, dynamic> json) =>
      _$ChurchWordEntryFromJson(json);

  Map<String, dynamic> toJson() => _$ChurchWordEntryToJson(this);
}
