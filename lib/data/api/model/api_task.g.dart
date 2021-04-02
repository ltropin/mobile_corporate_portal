// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTask _$ApiTaskFromJson(Map<String, dynamic> json) {
  return ApiTask(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    expirationDate: json['expirationDate'] as String,
    shortExpirationDate:
        ApiTask._dateFromString(json['shortExpirationDate'] as String),
    rewardCoins: json['rewardCoins'] as int,
    rewardXp: json['rewardXp'] as int,
    isExpired: json['isExpired'] as bool,
    attachedFileUrl: json['attachedFileUrl'] as String,
    difficulty:
        ApiDifficulty.fromJson(json['difficulty'] as Map<String, dynamic>),
    status: ApiStatus.fromJson(json['status'] as Map<String, dynamic>),
    priority: ApiPriority.fromJson(json['priority'] as Map<String, dynamic>),
    worker: ApiWorker.fromJson(json['worker'] as Map<String, dynamic>),
    author: ApiWorker.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiTaskToJson(ApiTask instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'expirationDate': instance.expirationDate,
      'shortExpirationDate':
          ApiTask._dateToString(instance.shortExpirationDate),
      'rewardCoins': instance.rewardCoins,
      'rewardXp': instance.rewardXp,
      'isExpired': instance.isExpired,
      'attachedFileUrl': instance.attachedFileUrl,
      'difficulty': instance.difficulty,
      'status': instance.status,
      'priority': instance.priority,
      'worker': instance.worker,
      'author': instance.author,
    };
