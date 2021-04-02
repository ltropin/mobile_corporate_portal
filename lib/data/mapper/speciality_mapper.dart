import 'package:mobile_corporate_portal/data/api/model/api_avatar.dart';
import 'package:mobile_corporate_portal/data/api/model/api_speciality.dart';
import 'package:mobile_corporate_portal/data/mapper/department_mapper.dart';
import 'package:mobile_corporate_portal/domain/model/speciality.dart';
import 'package:mobile_corporate_portal/domain/model/avatar.dart';

class SpecialityMapper {
  static Speciality fromApi(ApiSpeciality apiSpeciality) => Speciality(
        id: apiSpeciality.id,
        name: apiSpeciality.name,
        department: DepartmentMapper.fromApi(apiSpeciality.department),
      );
}
