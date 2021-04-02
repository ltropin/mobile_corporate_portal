// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_difficulty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDifficulty _$ApiDifficultyFromJson(Map<String, dynamic> json) {
  return ApiDifficulty(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ApiDifficultyToJson(ApiDifficulty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
