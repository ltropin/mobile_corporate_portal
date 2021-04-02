import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class Status extends Equatable {
  final int id;
  final String name;
  final String iconUrl;

  const Status({
    this.id,
    this.name,
    this.iconUrl,
  });


  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, iconUrl];
}
