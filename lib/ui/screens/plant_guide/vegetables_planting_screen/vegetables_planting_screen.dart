import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/screens/plant_guide/base_screen.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class VegetablesPlanting extends StatelessWidget {
  VegetablesPlanting({Key? key}) : super(key: key);

  final List<String>eggplantData=[
    AppStrings.eggplant1,
    AppStrings.eggplant2,
    AppStrings.eggplant3,
    AppStrings.eggplant4,
    AppStrings.eggplant5,
    AppStrings.eggplant6,
    AppStrings.eggplant7,
    AppStrings.eggplant8,
    AppStrings.eggplant9,
    AppStrings.eggplant10,
    AppStrings.eggplant11,
    AppStrings.eggplant12,
    AppStrings.eggplant13,
    AppStrings.eggplant14,
    AppStrings.eggplant15,
    AppStrings.eggplant16,
    AppStrings.eggplant17,
    AppStrings.eggplant18,
  ];
  final List<String>parsleyData=[
    AppStrings.parsley1,
    AppStrings.parsley2,
    AppStrings.parsley3,
    AppStrings.parsley4,
    AppStrings.parsley5,
    AppStrings.parsley6,
    AppStrings.parsley7,
    AppStrings.parsley8,
    AppStrings.parsley9,
    AppStrings.parsley10,
    AppStrings.parsley11,
    AppStrings.parsley12,
    AppStrings.parsley13,
    AppStrings.parsley14,
    AppStrings.parsley15,
    AppStrings.parsley16,
    AppStrings.parsley17,
    AppStrings.parsley18,
    AppStrings.parsley19,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              _buildParsleyButton(context),
              20.heightBox,
              _buildEggplantDataButton(context),
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
        title: AppStrings.vegetablesPlanting,
      ),
    );
  }

  AppButton _buildParsleyButton(context) {
    return AppButton(
      translation: AppStrings.parsleyTitle,
      color: AppPalette.primaryColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              BaseScreen(title: AppStrings.parsleyTitle, data: parsleyData,)),
        );
      },
    );
  }

  AppButton _buildEggplantDataButton(context) {
    return AppButton(
      translation: AppStrings.eggplantTitle,
      color: AppPalette.primaryColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              BaseScreen(title: AppStrings.eggplantTitle, data: eggplantData,)),
        );
      },
    );
  }

}
