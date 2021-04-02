import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:mobile_corporate_portal/domain/model/token.dart';
import 'package:mobile_corporate_portal/domain/model/validator.dart';
import 'package:mobile_corporate_portal/domain/model/worker.dart';

class AuthState extends Equatable {
  final List<Validator> validatorMessages;
  final Worker worker;
  final Token token;
  final bool isSubmiting;
  final bool isSuccess;
  final bool isFailure;
  final bool isLogout;

  const AuthState({
    this.validatorMessages,
    this.worker,
    this.token,
    this.isSubmiting,
    this.isSuccess,
    this.isFailure,
    this.isLogout,
  });

  bool get isFormValid => validatorMessages.isEmpty;

  bool get isEmailValid =>
      validatorMessages.where((el) => el.field == 'email').isEmpty;
  bool get isPasswordValid =>
      validatorMessages.where((el) => el.field == 'password').isEmpty;
  
  Validator get validatorUsernameMessage =>
      validatorMessages?.singleWhere((el) => el.field == 'email');

  Validator get validatorPasswordMessage =>
      validatorMessages?.singleWhere((el) => el.field == 'password');

  factory AuthState.initial() => const AuthState(
        validatorMessages: [],
        isSubmiting: false,
        isSuccess: false,
        isFailure: false,
      );

  factory AuthState.loading() => const AuthState(
        validatorMessages: [],
        isSubmiting: true,
        isSuccess: false,
        isFailure: false,
      );

  factory AuthState.failure() => const AuthState(
        validatorMessages: [],
        isSubmiting: false,
        isSuccess: false,
        isFailure: true,
      );

  factory AuthState.invalid({List<Validator> validatorMessages}) => AuthState(
        validatorMessages: validatorMessages,
        isSubmiting: false,
        isSuccess: false,
        isFailure: true,
      );

  factory AuthState.success({@required Worker worker, @required Token token}) =>
      AuthState(
        validatorMessages: const [],
        isSubmiting: false,
        isSuccess: true,
        isFailure: false,
        worker: worker,
        token: token,
      );

  @override
  List<Object> get props {
    return [
      validatorMessages,
      worker,
      token,
      isSubmiting,
      isSuccess,
      isFailure,
      isLogout,
    ];
  }

  AuthState copyWith({
    List<Validator> validatorMessages,
    Worker worker,
    Token token,
    bool isSubmiting,
    bool isSuccess,
    bool isFailure,
    bool isLogout,
  }) {
    return AuthState(
      validatorMessages: validatorMessages ?? this.validatorMessages,
      worker: worker ?? this.worker,
      token: token ?? this.token,
      isSubmiting: isSubmiting ?? this.isSubmiting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
      isLogout: isLogout ?? this.isLogout,
    );
  }
}
