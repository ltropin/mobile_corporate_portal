import 'package:equatable/equatable.dart';

class PostAuthBody extends Equatable {
  final String email;
  final String password;
  
  PostAuthBody({
    this.email,
    this.password,
  });

  Map<String, dynamic> toApi() => <String, dynamic>{
    'email': email,
    'password': password
  };

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [email, password];
}
