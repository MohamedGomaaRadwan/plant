// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';

// import '../../models/base/index.dart';
// import '../../models/user.dart';
// import '../../repository/index.dart';
// import '../../utilities/index.dart';
// import '../authentication/authentication_bloc.dart';
// import '../authentication/index.dart';
// import 'login_event.dart';
// import 'login_state.dart';

// @Injectable()
// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   // LoginBloc(this._userRepository, this._authenticationBloc, this._logger) : super(LoginStateUninitialized());
//   // final UserRepository _userRepository;
//   // final AuthenticationBloc _authenticationBloc;
//   final AppLogger _logger;

//   @override
//   Stream<LoginState> mapEventToState(LoginEvent event) async* {
//     if (event is LoginEventPressed) {
//       yield* login(event);
//     }
//   }

//   Stream<LoginState> login(LoginEventPressed event) async* {
//     try {
//       yield LoginStateLoading();

//       final AppResponseSingleResult<User> response = await _userRepository.login(loginRequest: event.user);

//       if (response.isSuccess) {
//         // set app state to Authenticated
//         _authenticationBloc.add(AuthenticationEventLoggedIn(
//           user: response.result!,
//         ));
//         yield LoginStateSuccess(user: response.result);
//       } else {
//         yield LoginStateFailed(error: response.errorMessage);
//       }
//     } catch (e) {
//       yield LoginStateFailed(error: e.toString());
//     }
//   }
// }
