import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogin extends AuthEvent {
  final String email;
  final String password;

  AuthLogin({
    @required this.email,
    @required this.password,
  });
}

class AuthClear extends AuthEvent {}