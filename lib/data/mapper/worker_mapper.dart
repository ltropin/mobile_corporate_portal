import 'package:mobile_corporate_portal/data/api/model/api_worker.dart';
import 'package:mobile_corporate_portal/data/mapper/avatar_mapper.dart';
import 'package:mobile_corporate_portal/data/mapper/speciality_mapper.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';

class WorkerMapper {
  static Worker fromApi(ApiWorker apiWorker) => Worker(
        id: apiWorker.id,
        firstName: apiWorker.firstName,
        lastName: apiWorker.lastName,
        email: apiWorker.email,
        balance: apiWorker.balance,
        experience: apiWorker.experience,
        password: apiWorker.password,
        avatar: apiWorker.avatar != null ? AvatarMapper.fromApi(apiWorker.avatar) : null,
        speciality: SpecialityMapper.fromApi(apiWorker.speciality),
      );
}
