import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token extends Equatable {
  final String token;

  String get tokenKey => 'Bearer';

  const Token({
    this.token,
  });

  factory Token.fromJson(Map<String, dynamic> json) =>
    _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [token];
}
