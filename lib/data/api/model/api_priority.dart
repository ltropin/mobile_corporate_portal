import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';

part 'api_priority.g.dart';

@JsonSerializable()
class ApiPriority extends Equatable {
  final int id;
  final String name;

  const ApiPriority({
    this.id,
    this.name,
  });


  @override
  bool get stringify => true;

  factory ApiPriority.fromJson(Map<String, dynamic> json) => _$ApiPriorityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiPriorityToJson(this);


  @override
  List<Object> get props {
    return [
      id,
      name,
    ];
  }
}