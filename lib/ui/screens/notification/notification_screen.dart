import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/app_strings.dart';
import '../../widgets/app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: PreferredSize(
          preferredSize:Size.fromHeight(70.h),
          child: BuildAppBar(
            isShowNotificationIcon:false,title: AppStrings.notifications,)),
      body: Column(
        children: [

        ],
      ),
    ));
  }
}
