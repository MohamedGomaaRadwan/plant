import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../models/index.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationStateAuthenticated extends AuthenticationState {
  AuthenticationStateAuthenticated({@required this.user});
  final User? user;

  @override
  List<Object> get props => <Object>[user!];
}

class AuthenticationStateUnauthenticated extends AuthenticationState {
  AuthenticationStateUnauthenticated({this.isFirst = false});
  final bool isFirst;

  @override
  List<Object> get props => <Object>[isFirst];
}

class AuthenticationStateLoading extends AuthenticationState {}
