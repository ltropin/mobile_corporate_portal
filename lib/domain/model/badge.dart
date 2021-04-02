import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class Badge extends Equatable {
  final int id;
  final String name;
  final String description;
  final String iconUrl;

  const Badge({
    this.id,
    this.name,
    this.description,
    this.iconUrl,
  });


  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, description, iconUrl];
}