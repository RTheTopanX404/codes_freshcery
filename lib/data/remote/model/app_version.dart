import 'package:json_annotation/json_annotation.dart';

part 'app_version.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AppVersion {
  @JsonKey()
  String? android;

  @JsonKey()
  String? ios;

  AppVersion();

  factory AppVersion.fromJson(Map<String, dynamic> json) =>
      _$AppVersionFromJson(json);

  Map<String, dynamic> toJson() => _$AppVersionToJson(this);
}
