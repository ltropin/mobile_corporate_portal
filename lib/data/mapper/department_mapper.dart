import 'package:mobile_corporate_portal/data/api/model/api_department.dart';
import 'package:mobile_corporate_portal/domain/model/department.dart';

class DepartmentMapper {
  static Department fromApi(ApiDepartment apiDepartment) => Department(
        id: apiDepartment.id,
        name: apiDepartment.name,
      );
}
