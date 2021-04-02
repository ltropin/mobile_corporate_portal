import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_badge.g.dart';

@JsonSerializable()
class ApiBadge extends Equatable {
  final int id;
  final String name;
  final String description;
  final String iconUrl;

  const ApiBadge({
    this.id,
    this.name,
    this.description,
    this.iconUrl,
  });


  @override
  bool get stringify => true;

  factory ApiBadge.fromJson(Map<String, dynamic> json) => _$ApiBadgeFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiBadgeToJson(this);


  @override
  List<Object> get props => [id, name, description, iconUrl];
}