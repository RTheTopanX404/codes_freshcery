import 'package:json_annotation/json_annotation.dart';

part 'app_color.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AppColor {
  @JsonKey()
  String? colorPrimary;

  @JsonKey()
  String? colorPrimaryDark;

  @JsonKey()
  String? colorAccent;

  @JsonKey()
  String? buttonColor_1;

  @JsonKey()
  String? buttonColor_2;

  AppColor();

  factory AppColor.fromJson(Map<String, dynamic> json) =>
      _$AppColorFromJson(json);

  Map<String, dynamic> toJson() => _$AppColorToJson(this);
}
