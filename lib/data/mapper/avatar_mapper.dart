import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';
import 'package:mobile_corporate_portal/domain/model/avatar.dart';

class AvatarMapper {
  static Avatar fromApi(ApiAvatar apiAvatar) => Avatar(
        id: apiAvatar.id,
        name: apiAvatar.name,
        extension: apiAvatar.extension,
        url: apiAvatar.url,
      );
}
