import 'package:azzoa_grocery/data/remote/model/profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_profile.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MyProfile {
  @JsonKey(defaultValue: null)
  Profile? jsonObject;

  MyProfile();

  factory MyProfile.fromJson(Map<String, dynamic> json) =>
      _$MyProfileFromJson(json);

  Map<String, dynamic> toJson() => _$MyProfileToJson(this);
}
