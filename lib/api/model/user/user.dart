import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(this.data);

  UserData data;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserData {
  UserData(this.avatarUrl, this.email, this.slug, this.unconfirmedEmail, this.username);

  @JsonKey(name: 'avatar_url')
  String avatarUrl;
  String email;
  String slug;
  @JsonKey(name: 'unconfirmed_email')
  String unconfirmedEmail;
  String username;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}