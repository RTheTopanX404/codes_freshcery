// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['id', 'name', 'username', 'email', 'phone']);
  return User(
    id: json['id'] as int?,
    name: json['name'] as String?,
    username: json['username'] as String?,
    email: json['email'] as String?,
    phone: json['phone'] as String?,
    emailVerifiedAt: json['email_verified_at'] as String?,
    phoneVerifiedAt: json['phone_verified_at'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'email_verified_at': instance.emailVerifiedAt,
      'phone_verified_at': instance.phoneVerifiedAt,
    };
