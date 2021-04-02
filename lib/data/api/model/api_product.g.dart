// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiProduct _$ApiProductFromJson(Map<String, dynamic> json) {
  return ApiProduct(
    id: json['id'] as int,
    name: json['name'] as String,
    descripton: json['descripton'] as String,
    url: json['url'] as String,
    price: json['price'] as int,
    isFavorite: json['isFavorite'] as bool,
    isCanBuy: json['isCanBuy'] as bool,
    image: json['image'] == null
        ? null
        : ApiAvatar.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiProductToJson(ApiProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'descripton': instance.descripton,
      'url': instance.url,
      'price': instance.price,
      'isFavorite': instance.isFavorite,
      'isCanBuy': instance.isCanBuy,
      'image': instance.image,
    };
