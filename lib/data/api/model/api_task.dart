import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';
import 'package:mobile_corporate_portal/data/api/model/api_difficulty.dart';
import 'package:mobile_corporate_portal/data/api/model/api_priority.dart';
import 'package:mobile_corporate_portal/data/api/model/api_speciality.dart';
import 'package:mobile_corporate_portal/data/api/model/api_status.dart';
import 'package:mobile_corporate_portal/data/api/model/api_worker.dart';

part 'api_task.g.dart';

@JsonSerializable(nullable: false)
class ApiTask extends Equatable {
  final int id;
  final String title;
  final String description;
  final String expirationDate;
  @JsonKey(fromJson: _dateFromString, toJson: _dateToString)
  final DateTime shortExpirationDate;
  final int rewardCoins;
  final int rewardXp;
  final bool isExpired;
  @JsonKey(nullable: true)
  final String attachedFileUrl;
  final ApiDifficulty difficulty;
  final ApiStatus status;
  final ApiPriority priority;
  final ApiWorker worker;
  final ApiWorker author;

  const ApiTask({
    this.id,
    this.title,
    this.description,
    this.expirationDate,
    this.shortExpirationDate,
    this.rewardCoins,
    this.rewardXp,
    this.isExpired,
    this.attachedFileUrl,
    this.difficulty,
    this.status,
    this.priority,
    this.worker,
    this.author,
  });


  @override
  bool get stringify => true;

  factory ApiTask.fromJson(Map<String, dynamic> json) => _$ApiTaskFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiTaskToJson(this);


  @override
  List<Object> get props {
    return [
      id,
      title,
      description,
      expirationDate,
      shortExpirationDate,
      rewardCoins,
      rewardXp,
      isExpired,
      attachedFileUrl,
      difficulty,
      status,
      priority,
      worker,
      author,
    ];
  }

  static DateTime _dateFromString(String value) {
    var splitted = value.split('.').map((e) => int.parse(e)).toList();
    return DateTime(splitted.last, splitted[1], splitted.first);
  }

  static String _dateToString(DateTime value) => '${value.day}.${value.month}.${value.year}';
}
