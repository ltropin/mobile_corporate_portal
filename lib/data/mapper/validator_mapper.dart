import 'package:mobile_corporate_portal/data/api/model/api_validator.dart';
import 'package:mobile_corporate_portal/domain/model/validator.dart';

class ValidatorMapper {
  static Validator fromApi(ApiValidator apiValidator) => Validator(
        field: apiValidator.field,
        message: apiValidator.message,
        description: apiValidator.description,
      );
}
