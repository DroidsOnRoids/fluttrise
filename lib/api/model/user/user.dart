import 'package:json_annotation/json_annotation.dart';

import 'package:fluttrise/api/required_param_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(this.data) : assert(data != null);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @RequiredParam
  UserData data;

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserData {
  UserData(this.avatarUrl, this.email, this.slug, this.unconfirmedEmail,
      this.username)
      : assert(avatarUrl != null),
        assert(slug != null),
        assert(email != null || unconfirmedEmail != null),
        assert(username != null);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  @RequiredParam
  String avatarUrl;
  @JsonKey(disallowNullValue: true)
  String email;
  @RequiredParam
  String slug;
  @JsonKey(name: 'unconfirmed_email', disallowNullValue: true)
  String unconfirmedEmail;

  @RequiredParam
  String username;

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
