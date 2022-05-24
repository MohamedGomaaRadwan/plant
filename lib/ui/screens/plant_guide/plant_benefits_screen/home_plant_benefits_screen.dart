import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
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

  Widget _buildUnionBenefits(BuildContext context){
    return AppButton(
      translation: AppStrings.onionBenefits,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.roofPreparation),
    );
  }

  Widget _buildDatesBenefits(BuildContext context){
    return AppButton(
      translation: AppStrings.datesBenefits,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.roofPreparation),
    );
  }

}
