import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';
import 'package:mobile_corporate_portal/data/api/model/api_speciality.dart';

part 'api_worker.g.dart';

@JsonSerializable(nullable: false)
class ApiWorker extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  @JsonKey(nullable: true)
  final ApiAvatar avatar;
  final ApiSpeciality speciality;
  final int balance;
  final int experience;

  const ApiWorker({
    @required this.id,
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.password,
    @required this.speciality,
    @required this.balance,
    @required this.experience,
    this.avatar
  });


  @override
  bool get stringify => true;

  factory ApiWorker.fromJson(Map<String, dynamic> json) => _$ApiWorkerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiWorkerToJson(this);


  @override
  List<Object> get props {
    return [
      id,
      firstName,
      lastName,
      email,
      password,
      avatar,
      speciality,
    ];
  }
}
