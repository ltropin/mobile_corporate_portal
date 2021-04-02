// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDepartment _$ApiDepartmentFromJson(Map<String, dynamic> json) {
  return ApiDepartment(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ApiDepartmentToJson(ApiDepartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
