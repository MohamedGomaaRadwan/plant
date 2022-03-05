import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet/ui/localization/app_localizations.dart';
import 'package:planet/ui/resources/app_icons.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/screens/activity/activity_screen.dart';
import 'package:planet/ui/screens/home_screen/home_screen.dart';
import 'package:planet/ui/screens/settings/settings.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const PathogensScreen(),
    HomeScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.activity, color: Colors.black,width: 30.w,height: 30.h,),
            label: AppLocalizations.of(context).translate(AppStrings.pathogens)),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.home, color: Colors.black,width: 30.w,height: 30.h,),
            label: AppLocalizations.of(context).translate(AppStrings.home)),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.guide, color: Colors.black,width: 30.w,height: 30.h,),
            label: AppLocalizations.of(context).translate(AppStrings.agricultureGuide)),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppPalette.primaryColor,
      unselectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }
}
