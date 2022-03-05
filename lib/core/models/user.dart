import 'package:json_annotation/json_annotation.dart';

import 'base/api_response.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends BaseResponse<User> {
  User();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  int? id;
  String? firstName;
  String? lastName;
  String? accessToken;

  @override
  fromJson(Map<String, dynamic> json) => User.fromJson(json);

  @override
  List<Object?> get props => <Object>[];

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
