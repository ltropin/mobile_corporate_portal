import 'package:mobile_corporate_portal/data/api/model/api_exception.dart';
import 'package:mobile_corporate_portal/domain/model/exception.dart';

class ExceptionMapper {
  static ExceptionInfo fromApi(ApiException apiException) => ExceptionInfo(
        message: apiException.message,
        description: apiException.description,
      );
}
