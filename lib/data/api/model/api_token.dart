import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';

part 'api_token.g.dart';

@JsonSerializable(nullable: false)
class ApiToken extends Equatable {
  final String token;

  const ApiToken({
    this.token,
  });


  @override
  bool get stringify => true;

  factory ApiToken.fromJson(Map<String, dynamic> json) => _$ApiTokenFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiTokenToJson(this);


  @override
  List<Object> get props => [token];
}
