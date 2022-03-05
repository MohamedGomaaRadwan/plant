import 'package:equatable/equatable.dart';
import '../../models/index.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => <Object>[];
}

class LoginStateUninitialized extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {
  const LoginStateSuccess({required this.user});
  final User? user;

  @override
  List<Object> get props => <Object>[user!];
}

class LoginStateFailed extends LoginState {
  const LoginStateFailed({required this.error});
  final String? error;

  @override
  List<Object> get props => <Object>[error!];
}
