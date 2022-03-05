import 'package:flutter/material.dart';
import 'package:planet/ui/screens/settings/settings.dart';
import '../screens/activity/activity_screen.dart';
import '../screens/auth_screen/login_screen.dart';
import '../screens/auth_screen/sign_up_screen.dart';
import '../screens/chat/chat_screen.dart';
import '../screens/diesease_details_screen/diesease_details_screen.dart';
import '../screens/home_screen/main_home.dart';
import '../screens/notification/notification_screen.dart';
import '../screens/splash_screen.dart';
import '../resources/app_routes.dart';
import '../resources/index.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {

      //Splash Screen
      case AppRoute.splash:
        return _screenInit(const SplashScreen());

      case AppRoute.login:
        return _screenInit(LoginScreen());

      case AppRoute.signUp:
        return _screenInit(SignUpScreen());

      case AppRoute.mainHome:
        return _screenInit(const MainHome());

      case AppRoute.activity:
        return _screenInit(const PathogensScreen());

      case AppRoute.notification:
        return _screenInit(const NotificationScreen());

      case AppRoute.chat:
        return _screenInit(const ChatScreen());

      case AppRoute.settings:
        return _screenInit(const SettingsScreen());

      case AppRoute.diseaseDetails:
        return _screenInit(DiseaseDetailsScreen());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static MaterialPageRoute<dynamic> _screenInit(Widget screen) {
    return MaterialPageRoute<dynamic>(builder: (_) => screen);
  }

  // static CupertinoPageRoute<dynamic> _screenPresent(Widget screen) {
  //   return CupertinoPageRoute<dynamic>(
  //     fullscreenDialog: true,
  //     builder: (_) => screen,
  //   );
  // }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
