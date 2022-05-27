import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/screens/plant_guide/plant_benefits_screen/benefits_screen.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class PlantBenefits extends StatelessWidget {
  const PlantBenefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              _buildUnionBenefits(context),
              10.heightBox,
              _buildDatesBenefits(context)
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
        title: AppStrings.plantBenefits,
      ),
    );
  }

  Widget _buildUnionBenefits(BuildContext context) {
    return AppButton(
        translation: AppStrings.onionBenefits,
        color: AppPalette.primaryColor,
        onTap: () => pushPage(
            context,
            BenefitsScreen(
                title: AppStrings.onionBenefits,
                content: AppStrings.plantBenefitsOnion)));
  }

  Widget _buildDatesBenefits(BuildContext context) {
    return AppButton(
      translation: AppStrings.datesBenefits,
      color: AppPalette.primaryColor,
        onTap: () => pushPage(
            context,
            BenefitsScreen(
                title: AppStrings.datesBenefits,
                content: AppStrings.plantBenefitsDates))
    );
  }
}
