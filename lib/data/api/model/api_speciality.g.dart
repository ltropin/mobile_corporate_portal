// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_speciality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSpeciality _$ApiSpecialityFromJson(Map<String, dynamic> json) {
  return ApiSpeciality(
    id: json['id'] as int,
    name: json['name'] as String,
    department: json['department'] == null
        ? null
        : ApiDepartment.fromJson(json['department'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiSpecialityToJson(ApiSpeciality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'department': instance.department,
    };
