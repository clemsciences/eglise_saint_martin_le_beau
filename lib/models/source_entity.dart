import 'package:eglise_saint_martin_le_beau/models/author.dart';
import 'package:eglise_saint_martin_le_beau/models/source.dart';
import 'package:json_annotation/json_annotation.dart';

part "source_entity.g.dart";

@JsonSerializable()
class SourceEntity extends Source {
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "timestamp")
  final DateTime? timestamp;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "authors")
  final List<Author> authors;
  @JsonKey(name: "publisher")
  final String? publisher;
  @JsonKey(name: "publicationYear")
  final String? publicationYear;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "officialDescription")
  final String? officialDescription;

  SourceEntity({
    required this.title,
    this.timestamp,
    this.url,
    required this.authors,
    this.publisher,
    this.publicationYear,
    this.description,
    this.officialDescription,
  });

  factory SourceEntity.fromJson(Map<String, dynamic> json) =>
      _$SourceEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SourceEntityToJson(this);
}
