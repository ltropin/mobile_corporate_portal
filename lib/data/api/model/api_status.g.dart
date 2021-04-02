// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiStatus _$ApiStatusFromJson(Map<String, dynamic> json) {
  return ApiStatus(
    id: json['id'] as int,
    name: json['name'] as String,
    iconUrl: json['iconUrl'] as String,
  );
}

Map<String, dynamic> _$ApiStatusToJson(ApiStatus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
    };
