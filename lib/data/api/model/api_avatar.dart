import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_avatar.g.dart';

@JsonSerializable()
class ApiAvatar extends Equatable {
  final int id;
  final String name;
  final String extension;
  final String url;

  const ApiAvatar({
    this.id,
    this.name,
    this.extension,
    this.url,
  });


  @override
  bool get stringify => true;

  factory ApiAvatar.fromJson(Map<String, dynamic> json) => _$ApiAvatarFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiAvatarToJson(this);


  @override
  List<Object> get props => [id, name, extension, url];
}
