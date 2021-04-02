import 'package:mobile_corporate_portal/data/api/model/api_status.dart';
import 'package:mobile_corporate_portal/domain/model/status.dart';

class StatusMapper {
  static Status fromApi(ApiStatus apiStatus) => Status(
        id: apiStatus.id,
        name: apiStatus.name,
        iconUrl: apiStatus.iconUrl,
      );
}
