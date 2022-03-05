import 'package:equatable/equatable.dart';

import '../../models/index.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => <Object>[];
}

class LoginEventPressed extends LoginEvent {
  const LoginEventPressed({required this.user});
  final User user;

  @override
  List<Object> get props => <Object>[user];
}
