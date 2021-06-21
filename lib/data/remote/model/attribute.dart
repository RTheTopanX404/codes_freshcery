import 'dart:convert';

import 'package:azzoa_grocery/constants.dart';
import 'package:azzoa_grocery/data/remote/model/term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribute.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Attribute {
  @JsonKey(required: true)
  int? id;

  @JsonKey()
  int? productId;

  @JsonKey()
  int? attributeId;

  @JsonKey(required: true)
  String? name;

  @JsonKey()
  String? title;

  @JsonKey()
  String? type;

  @JsonKey()
  String? slug;

  @JsonKey()
  int? position;

  @JsonKey(defaultValue: [])
  List<String>? content;

  @JsonKey(defaultValue: [])
  List<Term>? terms;

  @JsonKey(defaultValue: kDefaultString)
  String? createdAt;

  Attribute();

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeToJson(this);

  String toJsonString() => json.encode(toJson());
}
