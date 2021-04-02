import 'package:mobile_corporate_portal/domain/bloc/auth/auth.dart';
import 'package:mobile_corporate_portal/internal/dependecies/repository_module.dart';

class MainModule {
  static AuthBloc authBloc() => AuthBloc(
        authRepository: RepositoryModule.authRepository(),
      );
}