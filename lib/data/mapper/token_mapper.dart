import 'package:mobile_corporate_portal/data/api/model/api_token.dart';
import 'package:mobile_corporate_portal/domain/model/token.dart';

class TokenMapper {
  static Token fromApi(ApiToken apiToken) => Token(
        token: apiToken.token
      );
}
