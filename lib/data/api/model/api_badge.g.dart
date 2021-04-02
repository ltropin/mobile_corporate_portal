// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiBadge _$ApiBadgeFromJson(Map<String, dynamic> json) {
  return ApiBadge(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    iconUrl: json['iconUrl'] as String,
  );
}

Map<String, dynamic> _$ApiBadgeToJson(ApiBadge instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
    };
