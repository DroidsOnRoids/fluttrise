// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(json['data'] == null
      ? null
      : UserData.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$UserToJson(User instance) =>
    <String, dynamic>{'data': instance.data};

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
      json['avatar_url'] as String,
      json['email'] as String,
      json['slug'] as String,
      json['unconfirmed_email'] as String,
      json['username'] as String);
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'email': instance.email,
      'slug': instance.slug,
      'unconfirmed_email': instance.unconfirmedEmail,
      'username': instance.username
    };
