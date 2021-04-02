import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class Department extends Equatable {
  final int id;
  final String name;

  const Department({
    this.id,
    this.name,
  });

  @override
  bool get stringify => true;
  
  @override
  List<Object> get props => [id, name];
}
