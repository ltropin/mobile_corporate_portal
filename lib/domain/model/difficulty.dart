import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Difficulty extends Equatable {
  final int id;
  final String name;
  final String description;

  const Difficulty({
    this.id,
    this.name,
    this.description,
  });


  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, description];
}