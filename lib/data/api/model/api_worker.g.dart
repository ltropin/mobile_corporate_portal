// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_worker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiWorker _$ApiWorkerFromJson(Map<String, dynamic> json) {
  return ApiWorker(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    speciality:
        ApiSpeciality.fromJson(json['speciality'] as Map<String, dynamic>),
    balance: json['balance'] as int,
    experience: json['experience'] as int,
    avatar: json['avatar'] == null
        ? null
        : ApiAvatar.fromJson(json['avatar'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiWorkerToJson(ApiWorker instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'avatar': instance.avatar,
      'speciality': instance.speciality,
      'balance': instance.balance,
      'experience': instance.experience,
    };
