import 'package:equatable/equatable.dart';

import 'package:mobile_corporate_portal/domain/model/avatar.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final String descripton;
  final String url;
  final int price;
  final bool isFavorite;
  final bool isCanBuy;
  final Avatar image;

  const Product({
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
