import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/index.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';

import '../../../resources/app_icons.dart';
import '../../../widgets/app_text_display.dart';


class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            child: Column(
              children: [
                SizedBox(
                    width:70.w,
                    height: 70.h,
                    child: SvgPicture.asset(AppIcons.avatar),),
                12.heightBox,
                const AppText(translation:'محمد توفيق',),
              ],
            ),
          ),
          _buildSettings(context),
          _buildRateApp(),
          _buildSignOut(context),
        ],
      ),
    );
  }
  ListTile _buildRateApp() {
    return ListTile(
      leading: const Icon(Icons.star,color:Colors.black,),
      title: AppText(
        translation: AppStrings.rateApp,
        style: AppTextStyles.regular_16,
      ),
      onTap: () {},
    );
  }

  ListTile _buildSettings(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.settings,color:Colors.black,),
      title: AppText(
        translation: AppStrings.settings,
        style: AppTextStyles.regular_16,
      ),
      onTap: () => pushName(context, AppRoute.settings),
    );
  }


  ListTile _buildSignOut(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.logout,color: AppPalette.errorColor,),
      title: AppText(
        translation: AppStrings.signOut,
        style: AppTextStyles.regular_16.copyWith(color: AppPalette.errorColor),
      ),
      onTap: () => pushNameReplacement(context, AppRoute.login),
    );
  }

}
