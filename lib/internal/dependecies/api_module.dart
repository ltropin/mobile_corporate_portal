import 'package:mobile_corporate_portal/data/api/api_util.dart';
import 'package:mobile_corporate_portal/data/api/service/auth_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() => _apiUtil ??= ApiUtil(
        AuthService(),
      );
}