import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'core/bloc/index.dart';
import 'ui/helper/route_generator.dart';
import 'ui/localization/app_localizations.dart';
import 'ui/resources/index.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // use the returned token to send messages to users from your custom server

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) {
          return BlocBuilder<LanguageBloc, LanguageState>(
              builder: (BuildContext context, LanguageState snapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              supportedLocales: <Locale>[
                AppLocalizations.arLocale,
                AppLocalizations.enLocale
              ],
              locale: Locale(LanguageBloc.lang),
              localizationsDelegates: <LocalizationsDelegate<dynamic>>[
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate
              ],
              onGenerateRoute: RouteGenerator.generateRoute,
              initialRoute: AppRoute.splash,
              // navigatorObservers: <NavigatorObserver>[
              //   FirebaseAnalyticsObserver(analytics: analytics),
              // ],
              // initialRoute: AppRoute.home,

              theme: ThemeData(
                appBarTheme:
                    AppBarTheme(backgroundColor: AppPalette.primaryColor),
                // backgroundColor: AppPalette.backgroundColor,
                primaryColor: AppPalette.primaryColor,
              ),
            );
          });
        });
    // return RefreshConfiguration(
    //   headerBuilder: () => const MaterialClassicHeader(),
    //   child: ScreenUtilInit(
    //       designSize: const Size(375, 812),
    //       builder: (context,_) {
    //         return BlocBuilder<LanguageBloc, LanguageState>(builder: (BuildContext context, LanguageState snapshot) {
    //           return MaterialApp(
    //             debugShowCheckedModeBanner: false,
    //             supportedLocales: <Locale>[AppLocalizations.arLocale, AppLocalizations.enLocale],
    //             locale: Locale(LanguageBloc.lang),
    //             localizationsDelegates: <LocalizationsDelegate<dynamic>>[
    //               AppLocalizations.delegate,
    //               GlobalMaterialLocalizations.delegate,
    //               GlobalWidgetsLocalizations.delegate,
    //               GlobalCupertinoLocalizations.delegate,
    //               DefaultCupertinoLocalizations.delegate
    //             ],
    //             onGenerateRoute: RouteGenerator.generateRoute,
    //             initialRoute: AppRoute.splash,
    //             // navigatorObservers: <NavigatorObserver>[
    //             //   FirebaseAnalyticsObserver(analytics: analytics),
    //             // ],
    //             // initialRoute: AppRoute.home,
    //
    //             theme: ThemeData(
    //               appBarTheme: AppBarTheme(backgroundColor: AppPalette.primaryColor),
    //               // backgroundColor: AppPalette.backgroundColor,
    //               primaryColor: AppPalette.primaryColor,
    //             ),
    //           );
    //         });
    //       }),
    // );
  }
}
