import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'core/dependencies/bloc_provider.dart';
import 'core/dependencies/dependency_init.dart';
// import 'core/utilities/evn_variables.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // EnvVariables.instance().init();
  // await Firebase.initializeApp();

  configureDependencies();

  runZonedGuarded(() async {
    runApp(AppMainBlocProvider(child: MyApp()));
  }, (_, __) {});
}
