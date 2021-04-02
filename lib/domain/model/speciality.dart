import 'package:equatable/equatable.dart';
import 'package:mobile_corporate_portal/domain/model/department.dart';

class Speciality extends Equatable {
  final int id;
  final String name;
  final Department department;

  const Speciality({
    this.id,
    this.name,
    this.department,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, department];
}
