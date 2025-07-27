import 'package:json_annotation/json_annotation.dart';

part "author.g.dart";

@JsonSerializable()
class Author {
  @JsonKey(name: "firstName")
  final String firstName;
  @JsonKey(name: "lastName")
  final String lastName;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "birthday")
  final DateTime? birthday;

  Author({
    required this.firstName,
    required this.lastName,
    this.title,
    this.birthday,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

  @override
  String toString() {
    if (title != null) {
      return "$title $firstName $lastName";
    }
    if (firstName.isNotEmpty) {
      return "$firstName $lastName";
    }
    return lastName; //
  }
}
