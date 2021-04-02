import 'package:flutter/foundation.dart';
import 'package:mobile_corporate_portal/domain/model/token.dart';
import 'package:mobile_corporate_portal/domain/model/validator.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';
import 'package:tuple/tuple.dart';
import 'package:union/union.dart';

abstract class AuthRepository {
  Future<Union2<Tuple2<Worker, Token>, List<Validator>>> signIn({
    @required String email,
    @required String password,
  });
}
