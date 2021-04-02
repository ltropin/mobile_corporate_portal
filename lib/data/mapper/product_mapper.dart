import 'package:mobile_corporate_portal/data/api/model/api_product.dart';
import 'package:mobile_corporate_portal/data/mapper/avatar_mapper.dart';
import 'package:mobile_corporate_portal/domain/model/product.dart';

class ProductMapper {
  static Product fromApi(ApiProduct apiProduct) => Product(
        id: apiProduct.id,
        name: apiProduct.name,
        descripton: apiProduct.descripton,
        url: apiProduct.url,
        price: apiProduct.price,
        isCanBuy: apiProduct.isCanBuy,
        isFavorite: apiProduct.isFavorite,
        image: apiProduct.image != null ? AvatarMapper.fromApi(apiProduct.image) : null,
      );
}
