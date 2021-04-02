import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_status.g.dart';

@JsonSerializable()
class ApiStatus extends Equatable {
  final int id;
  final String name;
  final String iconUrl;

  const ApiStatus({
    this.id,
    this.name,
    this.iconUrl,
  });


  @override
  bool get stringify => true;

  factory ApiStatus.fromJson(Map<String, dynamic> json) => _$ApiStatusFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiStatusToJson(this);


  @override
  List<Object> get props => [id, name, iconUrl];
}
