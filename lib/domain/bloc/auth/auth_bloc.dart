import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_corporate_portal/domain/bloc/auth/auth.dart';
import 'package:mobile_corporate_portal/domain/model/token.dart';
import 'package:mobile_corporate_portal/domain/model/validator.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';
import 'package:mobile_corporate_portal/domain/repository/auth_repository.dart';
import 'package:mobile_corporate_portal/internal/di/global.dart';
import 'package:mobile_corporate_portal/internal/di/sharedpreferences.dart';
import 'package:tuple/tuple.dart';
import 'package:union/union.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({@required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthLogin) {
      yield* _mapLoginToState(event);
    }
  }

  Stream<AuthState> _mapLoginToState(AuthLogin authLoginEvent) async* {
    yield AuthState.loading();
    try {
      final response = await _authRepository.signIn(
        email: authLoginEvent.email,
        password: authLoginEvent.password,
      );
      final responseValue = response.value;
      if (responseValue is Tuple2<Worker, Token>) {
        final tokens = GetIt.I<SharedPreferencesDI>()
                .prefs
                ?.getStringList('Tokens')
                ?.map((e) =>
                    Token.fromJson(jsonDecode(e) as Map<String, dynamic>))
                ?.toList() ??
            [];
        if (tokens.isNotEmpty) {
          tokens.clear();
        }
        tokens.add(responseValue.item2);
        await GetIt.I<SharedPreferencesDI>().prefs.setStringList(
              'Tokens',
              tokens.map((e) => jsonEncode(e.toJson())).toList(),
            );
        GetIt.I<GlobalDI>().token = responseValue.item2;
        yield AuthState.success(
          worker: responseValue.item1,
          token: responseValue.item2,
        );
      } else {
        yield AuthState.invalid(
            validatorMessages: responseValue as List<Validator>);
      }
    } catch (_) {
      yield AuthState.failure();
      rethrow;
    }
  }
}
