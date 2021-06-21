import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  @JsonKey(required: true)
  int? id;

  @JsonKey(required: true)
  String? name;

  @JsonKey(required: true)
  String? username;

  @JsonKey(required: true)
  String? email;

  @JsonKey(required: true)
  String? phone;

  @JsonKey(name: "email_verified_at", required: false)
  String? emailVerifiedAt;

  @JsonKey(name: "phone_verified_at", required: false)
  String? phoneVerifiedAt;

  User(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.emailVerifiedAt,
      this.phoneVerifiedAt});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
