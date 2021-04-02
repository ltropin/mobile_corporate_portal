import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mobile_corporate_portal/domain/model/speciality.dart';
import 'package:mobile_corporate_portal/domain/model/avatar.dart';

class Worker extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final Avatar avatar;
  final Speciality speciality;
  final int balance;
  final int experience;

  const Worker({
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
