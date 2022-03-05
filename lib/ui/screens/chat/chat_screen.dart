import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/resources/app_image_paths.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/app_padding.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: BuildAppBar(
              title: AppStrings.chat,
              isShowNotificationIcon: true,
            )),
        body: const AppPadding(
          child: SingleChildScrollView(
            child: Image(image: AssetImage(AppImages.chat),),
          ),
        ),
      ),
    );
  }
}