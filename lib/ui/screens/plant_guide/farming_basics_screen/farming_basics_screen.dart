import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class FarmingBasics extends StatelessWidget {
  const FarmingBasics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              _buildRoofPreparationButton(context),
              20.heightBox,
              _buildWhyDoIPlantButton(context),
              20.heightBox,

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
        title: AppStrings.farmingBasics,
      ),
    );
  }

  AppButton _buildRoofPreparationButton(context) {
    return AppButton(
      translation: AppStrings.roofPreparation,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.roofPreparation),
    );
  }

  AppButton _buildWhyDoIPlantButton(context) {
    return AppButton(
      translation: AppStrings.whyDoIPlan,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.whyDoIPlan),
    );
  }
}
