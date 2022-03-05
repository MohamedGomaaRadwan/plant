import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/index.dart';
import '../bloc/notification_updates/index.dart';
import 'dependency_init.dart';

class AppMainBlocProvider extends StatelessWidget {
  AppMainBlocProvider({this.child});
  final LanguageBloc languageBloc = getIt<LanguageBloc>();
  // final AuthenticationBloc authenticationBloc = getIt<AuthenticationBloc>();
  final NotificationUpdatesBloc notificationUpdatesBloc = getIt<NotificationUpdatesBloc>();
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<LanguageBloc>(create: (BuildContext context) => languageBloc..add(LanguageAppStartEvent())),
        // BlocProvider<AuthenticationBloc>(create: (BuildContext context) => authenticationBloc),
        BlocProvider<NotificationUpdatesBloc>(create: (BuildContext context) => notificationUpdatesBloc),
      ],
      child: child!,
    );
  }
}
