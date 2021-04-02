import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class Avatar extends Equatable {
  final int id;
  final String name;
  final String extension;
  final String url;

  const Avatar({
    this.id,
    this.name,
    this.extension,
    this.url,
  });


  @override
  bool get stringify => true;


  @override
  List<Object> get props => [id, name, extension, url];
}
