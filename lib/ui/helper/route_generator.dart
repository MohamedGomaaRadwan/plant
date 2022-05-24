import 'package:flutter/material.dart';
import 'package:planet/ui/screens/plant_guide/compost_screen/compost_screen.dart';
import 'package:planet/ui/screens/plant_guide/farming_advice_screen/farming_advice_screen.dart';
import 'package:planet/ui/screens/plant_guide/farming_basics_screen/farming_basics_screen.dart';
import 'package:planet/ui/screens/plant_guide/fruit_planning_screen/fruit_planing_screen.dart';
import 'package:planet/ui/screens/plant_guide/ornamental_plant_screen/ornamental_plant_screen.dart';
import 'package:planet/ui/screens/plant_guide/plant_benefits_screen/home_plant_benefits_screen.dart';
import 'package:planet/ui/screens/plant_guide/plant_pestes_screen/plant_pests_screen.dart';
import 'package:planet/ui/screens/plant_guide/vegetables_planting_screen/vegetables_planting_screen.dart';
import 'package:planet/ui/screens/settings/settings.dart';
import '../screens/activity/activity_screen.dart';
import '../screens/auth_screen/login_screen.dart';
import '../screens/auth_screen/sign_up_screen.dart';
import '../screens/chat/chat_screen.dart';
import '../screens/home_screen/main_home.dart';
import '../screens/notification/notification_screen.dart';
import '../screens/plant_type_screen/plant_details_screen.dart';
import '../screens/plant_type_screen/plant_type_screen.dart';
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


      case AppRoute.plantDetails:
        return _screenInit(const PlantDetailsScreen());

      case AppRoute.diseaseDetails:
        return _screenInit(const PlantTypeScreen());

      case AppRoute.plantBenefits:
        return _screenInit(const PlantBenefits());

      case AppRoute.plantPests:
        return _screenInit(const PlantPests());

      case AppRoute.ornamentalPlant:
        return _screenInit(const OrnamentalPlant());

      case AppRoute.fruitsPlanting:
        return _screenInit(const FruitPlaning());

      case AppRoute.vegetablesPlanting:
        return _screenInit(const VegetablesPlanting());

      case AppRoute.farmingBasics:
        return _screenInit(const FarmingBasics());

      case AppRoute.compost:
        return _screenInit(const CompostScreen());

      case AppRoute.farmingAdvices:
        return _screenInit(const FarmingAdvice());

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
