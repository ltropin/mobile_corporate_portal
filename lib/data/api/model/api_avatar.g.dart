// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAvatar _$ApiAvatarFromJson(Map<String, dynamic> json) {
  return ApiAvatar(
    id: json['id'] as int,
    name: json['name'] as String,
    extension: json['extension'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ApiAvatarToJson(ApiAvatar instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'extension': instance.extension,
      'url': instance.url,
    };
