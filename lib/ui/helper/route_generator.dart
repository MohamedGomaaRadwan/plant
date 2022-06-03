import 'package:flutter/material.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/screens/pathogens_screen/pathogens_screen.dart';
import 'package:planet/ui/screens/auth_screen/login_screen.dart';
import 'package:planet/ui/screens/auth_screen/sign_up_screen.dart';
import 'package:planet/ui/screens/home_screen/main_home.dart';
import 'package:planet/ui/screens/plant_guide/compost_screen/compost_screen.dart';
import 'package:planet/ui/screens/plant_guide/compost_screen/npk_screen.dart';
import 'package:planet/ui/screens/plant_guide/compost_screen/yeast_feeding_screen.dart';
import 'package:planet/ui/screens/plant_guide/farming_advice_screen/farming_advice_screen.dart';
import 'package:planet/ui/screens/plant_guide/base_screen.dart';
import 'package:planet/ui/screens/plant_guide/farming_basics_screen/farming_basics_screen.dart';
import 'package:planet/ui/screens/plant_guide/fruit_planning_screen/fruit_planing_screen.dart';
import 'package:planet/ui/screens/plant_guide/ornamental_plant_screen/ornamental_plant_screen.dart';
import 'package:planet/ui/screens/plant_guide/plant_benefits_screen/benefits_screen.dart';
import 'package:planet/ui/screens/plant_guide/plant_benefits_screen/home_plant_benefits_screen.dart';
import 'package:planet/ui/screens/plant_guide/plant_pestes_screen/old_needle_screen.dart';
import 'package:planet/ui/screens/plant_guide/plant_pestes_screen/plant_pests_screen.dart';
import 'package:planet/ui/screens/plant_guide/vegetables_planting_screen/vegetables_planting_screen.dart';
import 'package:planet/ui/screens/agriculture_guide/agriculture_guide.dart';
import 'package:planet/ui/screens/plant_type_screen/plant_details_screen.dart';
import 'package:planet/ui/screens/plant_type_screen/plant_type_screen.dart';
import 'package:planet/ui/screens/settings/settings.dart';
import 'package:planet/ui/screens/splash_screen.dart';

import '../screens/plant_guide/ornamental_plant_screen/aglaonema_screen.dart';
import '../screens/plant_guide/ornamental_plant_screen/bamboo_screen.dart';
import '../screens/plant_guide/plant_pestes_screen/mites_screen.dart';


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

      case AppRoute.settings:
        return _screenInit(const SettingsScreen());

      case AppRoute.agricultureGuide:
        return _screenInit(const AgricultureGuide());

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
        return _screenInit(FruitPlaning());

      case AppRoute.vegetablesPlanting:
        return _screenInit(VegetablesPlanting());

      case AppRoute.farmingBasics:
        return _screenInit(FarmingBasicsScreen());

      case AppRoute.farmingBasicsBase:
        return _screenInit(const BaseScreen(data: [], title: '',));

      case AppRoute.compost:
        return _screenInit(const CompostScreen());
      case AppRoute.npk:
        return _screenInit(const NPKScreen());
      case AppRoute.yeastFeeding:
        return _screenInit(const YeastFeedingScreen());

      case AppRoute.farmingAdvices:
        return _screenInit(const FarmingAdvice());

      case AppRoute.ornamentalPlant:
        return _screenInit(const OrnamentalPlant());
        case AppRoute.aglaonema:
        return _screenInit(const AglaonemaScreen());
        case AppRoute.bamboo:
        return _screenInit(const BambooScreen());
        case AppRoute.mites:
        return _screenInit(const MitesScreen());
        case AppRoute.oldNeedle:
        return _screenInit(const OldNeedleScreen());

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
