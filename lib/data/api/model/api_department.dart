import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_department.g.dart';

@JsonSerializable()
class ApiDepartment extends Equatable {
  final int id;
  final String name;

  const ApiDepartment({
    this.id,
    this.name,
  });

  @override
  bool get stringify => true;

  factory ApiDepartment.fromJson(Map<String, dynamic> json) => _$ApiDepartmentFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiDepartmentToJson(this);

  @override
  List<Object> get props => [id, name];
}
