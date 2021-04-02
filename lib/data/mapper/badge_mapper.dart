import 'package:mobile_corporate_portal/data/api/model/api_badge.dart';
import 'package:mobile_corporate_portal/domain/model/badge.dart';

class BadgeMapper {
  static Badge fromApi(ApiBadge apiBadge) => Badge(
        id: apiBadge.id,
        name: apiBadge.name,
        description: apiBadge.description,
        iconUrl: apiBadge.iconUrl,
      );
}
