// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['data'], disallowNullValues: const ['data']);
  return User(json['data'] == null
      ? null
      : UserData.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'avatarUrl',
    'slug',
    'username'
  ], disallowNullValues: const [
    'avatarUrl',
    'email',
    'slug',
    'unconfirmed_email',
    'username'
  ]);
  return UserData(
      json['avatarUrl'] as String,
      json['email'] as String,
      json['slug'] as String,
      json['unconfirmed_email'] as String,
      json['username'] as String);
}

Map<String, dynamic> _$UserDataToJson(UserData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatarUrl', instance.avatarUrl);
  writeNotNull('email', instance.email);
  writeNotNull('slug', instance.slug);
  writeNotNull('unconfirmed_email', instance.unconfirmedEmail);
  writeNotNull('username', instance.username);
  return val;
}
