import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/navigator.dart';
import '../resources/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8), () {
      pushNameReplacement(context, AppRoute.mainHome);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, body: _buildScreen());
  }

  Widget _buildScreen() {
    return Center(
    child: Image(
    image: const AssetImage(AppImages.plant),
    height: 200.h,
    width: 200.w,
    ),
    );
  }

  // void authenticationListener(BuildContext context, AuthenticationState state) {
  //   if (state is AuthenticationStateAuthenticated) {
  //     // FirebaseCrashlytics.instance.setUserIdentifier('${state.user!.id}');
  //     // pushNameReplacement(context, AppRoute.home);
  //   }
  //   else if (state is AuthenticationStateUnauthenticated) {
  //     // FirebaseCrashlytics.instance.setUserIdentifier('unAutherizedUser');
  //     //   if (state.isFirst) {
  //     //     pushNameReplacement(context, AppRoute.onBoarding);
  //     //   } else {
  //     //     pushNameReplacement(context, AppRoute.login);
  //     //   }
  //     // }
  //   }
  // }
}
