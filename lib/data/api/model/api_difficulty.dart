import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_difficulty.g.dart';

@JsonSerializable()
class ApiDifficulty extends Equatable {
  final int id;
  final String name;
  final String description;

  const ApiDifficulty({
    this.id,
    this.name,
    this.description,
  });


  @override
  bool get stringify => true;

  factory ApiDifficulty.fromJson(Map<String, dynamic> json) => _$ApiDifficultyFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiDifficultyToJson(this);


  @override
  List<Object> get props => [id, name, description];
}