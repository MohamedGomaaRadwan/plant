import 'package:equatable/equatable.dart';

import '../../models/index.dart';

abstract class AuthenticationEvent extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

class AuthenticationEventAppStarted extends AuthenticationEvent {}

class AuthenticationEventAppFirstOpen extends AuthenticationEvent {}

class AuthenticationEventLoggedIn extends AuthenticationEvent {
  AuthenticationEventLoggedIn({required this.user});
  final User user;

  @override
  List<Object> get props => <Object>[user];
}

class AuthenticationEventSaveUser extends AuthenticationEvent {
  AuthenticationEventSaveUser({required this.user});
  final User user;

  @override
  List<Object> get props => <Object>[user];
}

class AuthenticationEventLoggedOut extends AuthenticationEvent {}
