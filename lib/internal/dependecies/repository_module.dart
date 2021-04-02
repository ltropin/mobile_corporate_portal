import 'package:mobile_corporate_portal/data/repository/auth_data_repository.dart';
import 'package:mobile_corporate_portal/domain/repository/auth_repository.dart';
import 'package:mobile_corporate_portal/internal/dependecies/api_module.dart';

class RepositoryModule {
  static AuthRepository _authRepository;

  static AuthRepository authRepository() =>
    _authRepository ??= AuthDataRepository(
      ApiModule.apiUtil(),
    );
}