import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/screens/plant_guide/base_screen.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class FarmingBasicsScreen extends StatelessWidget {
  FarmingBasicsScreen({Key? key}) : super(key: key);

  final List<String>roofPreparationData=[
    AppStrings.roofPreparation1,
    AppStrings.roofPreparation2,
    AppStrings.roofPreparation3,
    AppStrings.roofPreparation4,
    AppStrings.roofPreparation5,
    AppStrings.roofPreparation6,
    AppStrings.roofPreparation7,
  ];
  final List<String>whyDoIPlanData=[
    AppStrings.whyDoIPlan1,
    AppStrings.whyDoIPlan2,
    AppStrings.whatDoINeed3,
    AppStrings.whatDoINeed4,
    AppStrings.whatDoINeed5,
    AppStrings.whatDoINeed6,
    AppStrings.whatDoINeed7,
    AppStrings.whatDoINeed8,
    AppStrings.whatDoINeed9,
  ];
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
          BaseScreen(title: AppStrings.roofPreparation, data: roofPreparationData,)),
        );
      },
    );
  }

  AppButton _buildWhyDoIPlantButton(context) {
    return AppButton(
      translation: AppStrings.whyDoIPlan,
      color: AppPalette.primaryColor,
      onTap: ()
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            BaseScreen(title: AppStrings.whyDoIPlan, data: whyDoIPlanData,)),
      );

    }
    );
  }
}
