import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ApiException extends Equatable {
  final String message;
  final String description;
  
  const ApiException({
    @required this.message,
    @required this.description,
  });

  factory ApiException.fromApi(Map<String, dynamic> map) {
    if (map == null) {
      return null;
    }

    return ApiException(
      message: map['message'] as String,
      description: map['description'] as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [message, description];
}