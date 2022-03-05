import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../models/user.dart';
import '../../utilities/index.dart';
import '../../repository/index.dart';
import '../index.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc( this._authRepository, this._logger) : super(AuthenticationUninitialized());

  // final UserRepository _userRepository;
  final AuthRepository _authRepository;
  final AppLogger _logger;

  // User? get user => _userRepository.user;

  // @override
  // Stream<AuthenticationState> mapEventToState(
  //   AuthenticationEvent event,
  // ) async* {
  //   if (event is AuthenticationEventAppStarted) {
  //     yield* _appStarted(event);
  //   } else if (event is AuthenticationEventLoggedIn) {
  //     yield* _login(event);
  //   } else if (event is AuthenticationEventSaveUser) {
  //     yield* _saveUser(event);
  //   } else if (event is AuthenticationEventLoggedOut) {
  //     yield* _logOut();
  //   } else if (event is AuthenticationEventAppFirstOpen) yield* _firstOpen(event);
  // }

  Stream<AuthenticationState> _firstOpen(AuthenticationEventAppFirstOpen event) async* {
    _authRepository.setFirstTime(false);
    yield state;
  }

  // Stream<AuthenticationState> _appStarted(AuthenticationEventAppStarted event) async* {
  //   try {
  //     await _userRepository.getUser();
  //
  //     if (user != null) {
  //       // when the user is already loged it set his parent id
  //       yield AuthenticationStateAuthenticated(user: user);
  //     } else {
  //       yield AuthenticationStateUnauthenticated(isFirst: await _authRepository.isFirstTime());
  //     }
  //   } catch (e) {
  //     _logger.error(e);
  //     yield AuthenticationStateUnauthenticated();
  //   }
  // }
  //
  // Stream<AuthenticationState> _logOut() async* {
  //   yield AuthenticationStateLoading();
  //   await _authRepository.setFirstTime(true);
  //   await _userRepository.removeUser();
  //   yield AuthenticationStateUnauthenticated();
  // }
  //
  // Stream<AuthenticationState> _saveUser(AuthenticationEventSaveUser event) async* {
  //   yield AuthenticationStateLoading();
  //   await _userRepository.setUser(event.user);
  //   yield AuthenticationStateAuthenticated(user: user);
  // }
  //
  // Stream<AuthenticationState> _login(AuthenticationEventLoggedIn event) async* {
  //   try {
  //     yield AuthenticationStateLoading();
  //     await _userRepository.setUser(event.user);
  //     // await _authRepository.setToken(user!.accessToken!, user!.refreshToken!);
  //     yield AuthenticationStateAuthenticated(user: user);
  //   } catch (e) {
  //     yield AuthenticationStateUnauthenticated();
  //   }
  // }
}
