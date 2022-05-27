
import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class FarmingAdvice extends StatelessWidget {
  const FarmingAdvice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              AppText(translation: AppStrings.farmingTips1,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips2,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips3,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips4,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips5,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips6,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips7,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips8,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips9,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips10,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips11,),
              10.heightBox,
              AppText(translation: AppStrings.farmingTips12,),

            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: BuildAppBar(
        isHomeAppBar: false,
        title: AppStrings.farmingAdvices,
      ),
    );
  }

  Widget _buildAdvice(BuildContext context , String title) {
    return AppButton(
      translation: title,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.npk),
    );
  }

}
