import 'package:mobile_corporate_portal/data/api/api_util.dart';
import 'package:mobile_corporate_portal/domain/model/token.dart';
import 'package:mobile_corporate_portal/domain/model/validator.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';
import 'package:mobile_corporate_portal/domain/repository/auth_repository.dart';
import 'package:tuple/tuple.dart';
import 'package:union/union.dart';

class AuthDataRepository extends AuthRepository {
  final ApiUtil _apiUtil;

  AuthDataRepository(this._apiUtil);

  @override
  Future<Union2<Tuple2<Worker, Token>, List<Validator>>> signIn({
    String email,
    String password,
  }) =>
      _apiUtil.signIn(email: email, password: password);
}
