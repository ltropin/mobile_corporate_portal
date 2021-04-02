import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';

part 'api_product.g.dart';

@JsonSerializable()
class ApiProduct extends Equatable {
  final int id;
  final String name;
  final String descripton;
  final String url;
  final int price;
  final bool isFavorite;
  final bool isCanBuy;
  final ApiAvatar image;

  const ApiProduct({
    this.id,
    this.name,
    this.descripton,
    this.url,
    this.price,
    this.isFavorite,
    this.isCanBuy,
    this.image,
  });


  @override
  bool get stringify => true;

  factory ApiProduct.fromJson(Map<String, dynamic> json) => _$ApiProductFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ApiProductToJson(this);


  @override
  List<Object> get props {
    return [
      id,
      name,
      descripton,
      url,
      price,
      isFavorite,
      isCanBuy,
      image,
    ];
  }
}
