import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ExceptionInfo extends Equatable {
  final String message;
  final String description;
  
  const ExceptionInfo({
    @required this.message,
    @required this.description,
  });
  
  @override
  bool get stringify => true;

  @override
  List<Object> get props => [message, description];
}