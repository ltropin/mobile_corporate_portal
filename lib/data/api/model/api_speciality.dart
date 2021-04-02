import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:mobile_corporate_portal/data/api/model/api_department.dart';

part 'api_speciality.g.dart';

@JsonSerializable()
class ApiSpeciality extends Equatable {
  final int id;
  final String name;
  final ApiDepartment department;

  const ApiSpeciality({
    this.id,
    this.name,
    this.department,
  });


  @override
  bool get stringify => true;

  factory ApiSpeciality.fromJson(Map<String, dynamic> json) => _$ApiSpecialityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiSpecialityToJson(this);

  @override
  List<Object> get props => [id, name, department];
}
