import 'package:eglise_saint_martin_le_beau/models/source.dart';
import 'package:eglise_saint_martin_le_beau/models/source_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part "source_extract.g.dart";

@JsonSerializable()
class SourceBookExtract extends Source {
  @JsonKey(name: "source")
  final SourceEntity source;
  @JsonKey(name: "page")
  final int page;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "internalReference")
  final String internalReference;

  SourceBookExtract({
    required this.source,
    required this.page,
    this.url,
    this.description,
    required this.internalReference,
  });
}
