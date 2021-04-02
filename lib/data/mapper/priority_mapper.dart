import 'package:mobile_corporate_portal/data/api/model/api_priority.dart';
import 'package:mobile_corporate_portal/domain/model/priority.dart';

class PriorityMapper {
  static Priority fromApi(ApiPriority apiPriority) => Priority(
        id: apiPriority.id,
        name: apiPriority.name,
      );
}
