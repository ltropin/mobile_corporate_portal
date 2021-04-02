import 'package:equatable/equatable.dart';
import 'package:mobile_corporate_portal/domain/model/difficulty.dart';
import 'package:mobile_corporate_portal/domain/model/priority.dart';
import 'package:mobile_corporate_portal/domain/model/status.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';

class Task extends Equatable {
  final int id;
  final String title;
  final String description;
  final String expirationDate;
  final DateTime shortExpirationDate;
  final int rewardCoins;
  final int rewardXp;
  final bool isExpired;
  final String attachedFileUrl;
  final Difficulty difficulty;
  final Status status;
  final Priority priority;
  final Worker worker;
  final Worker author;

  const Task({
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
