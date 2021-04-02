import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class Priority extends Equatable {
  final int id;
  final String name;

  const Priority({
    this.id,
    this.name,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
    ];
  }
}