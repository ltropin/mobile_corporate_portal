import 'package:flutter/foundation.dart';
import 'package:mobile_corporate_portal/data/api/model/api_token.dart';
import 'package:mobile_corporate_portal/data/api/model/api_validator.dart';
import 'package:mobile_corporate_portal/data/api/model/api_worker.dart';
import 'package:mobile_corporate_portal/data/api/request/post_auth_body.dart';
import 'package:mobile_corporate_portal/data/api/service/auth_service.dart';
import 'package:mobile_corporate_portal/data/mapper/token_mapper.dart';
import 'package:mobile_corporate_portal/data/mapper/validator_mapper.dart';
import 'package:mobile_corporate_portal/data/mapper/worker_mapper.dart';
import 'package:mobile_corporate_portal/domain/model/token.dart';
import 'package:mobile_corporate_portal/domain/model/validator.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';
import 'package:tuple/tuple.dart';
import 'package:union/union.dart';

class ApiUtil {
  final AuthService _authService;

  ApiUtil(
    this._authService,
  );

  Future<Union2<Tuple2<Worker, Token>, List<Validator>>> signIn({
    @required String email,
    @required String password,
  }) async {
    final body = PostAuthBody(password: password, email: email);
    final result = await _authService.signIn(body);
    final resutlValue = result.value;
    if (resutlValue is Tuple2<ApiWorker, ApiToken>) {
      final userAndToken = resutlValue as Tuple2<ApiWorker, ApiToken>;
      return Tuple2<Worker, Token>(
        WorkerMapper.fromApi(userAndToken.item1),
        TokenMapper.fromApi(userAndToken.item2),
      ).asFirst();
    } else {
      return (resutlValue as List<ApiValidator>)
          .map(ValidatorMapper.fromApi)
          .toList()
          .asSecond();
    }
  }
}