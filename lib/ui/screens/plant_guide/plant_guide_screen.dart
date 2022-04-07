import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/app_button.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import 'package:planet/ui/widgets/index.dart';

class PlantGuide extends StatelessWidget {
  const PlantGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              _buildFarmingBasicsButton(context),
              10.heightBox,
              _buildVegetablesPlantingButton(context),
              10.heightBox,
              _buildFruitsPlantingButton(context),
              10.heightBox,
              _buildFarmingAdvicesButton(context),
              10.heightBox,
              _buildOrnamentalPlantButton(context),
              10.heightBox,
              _buildPlantPestsButton(context),
              10.heightBox,
              _buildCompostButton(context),
              10.heightBox,
              _buildPlantsBenefitsButton(context),
              10.heightBox,
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
        title: AppStrings.agricultureGuide,
      ),
    );
  }

  AppButton _buildFarmingBasicsButton(context) {
    return AppButton(
      translation: AppStrings.farmingBasics,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.farmingBasics),
    );
  }

  AppButton _buildVegetablesPlantingButton(context) {
    return AppButton(
      translation: AppStrings.vegetablesPlanting,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.vegetablesPlanting),
    );
  }

  AppButton _buildFruitsPlantingButton(context) {
    return AppButton(
      translation: AppStrings.fruitsPlanting,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.fruitsPlanting),
    );
  }


  AppButton _buildFarmingAdvicesButton(context) {
    return AppButton(
      translation: AppStrings.farmingAdvices,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.farmingAdvices),
    );
  }

  AppButton _buildOrnamentalPlantButton(context) {
    return AppButton(
      translation: AppStrings.ornamentalPlant,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.ornamentalPlant),
    );
  }

  AppButton _buildPlantPestsButton(context) {
    return AppButton(
      translation: AppStrings.plantPests,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.plantPests),
    );
  }

  AppButton _buildCompostButton(context) {
    return AppButton(
      translation: AppStrings.compost,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.compost),
    );
  }

  AppButton _buildPlantsBenefitsButton(context) {
    return AppButton(
      translation: AppStrings.plantBenefits,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.plantBenefits),
    );
  }

}
