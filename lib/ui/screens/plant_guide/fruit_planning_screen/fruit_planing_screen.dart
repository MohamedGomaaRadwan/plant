import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/screens/plant_guide/base_screen.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class FruitPlaning extends StatelessWidget {
  FruitPlaning({Key? key}) : super(key: key);

  final List<String>berriesData=[
    AppStrings.berries1,
    AppStrings.berries2,
    AppStrings.berries3,
    AppStrings.berries4,
    AppStrings.berries5,
    AppStrings.berries6,
    AppStrings.berries7,
    AppStrings.berries8,
    AppStrings.berries9,
    AppStrings.berries10,
    AppStrings.berries11,
    AppStrings.berries12,
    AppStrings.berries13,
    AppStrings.berries14,
    AppStrings.berries15,
    AppStrings.berries16,
    AppStrings.berries17,
    AppStrings.berries18,
    AppStrings.berries19,
  ];
  final List<String>guavaData=[
    AppStrings.guava1,
    AppStrings.guava2,
    AppStrings.guava3,
    AppStrings.guava4,
    AppStrings.guava5,
    AppStrings.guava6,
    AppStrings.guava7,
    AppStrings.guava8,
    AppStrings.guava9,
    AppStrings.guava10,
    AppStrings.guava11,
    AppStrings.guava12,
    AppStrings.guava13,
    AppStrings.guava14,
    AppStrings.guava15,
    AppStrings.guava16,
    AppStrings.guava17,
    AppStrings.guava18,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              _buildBerriesButton(context),
              20.heightBox,
              _buildGuavaButton(context),
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
        title: AppStrings.fruitsPlanting,
      ),
    );
  }

  AppButton _buildBerriesButton(context) {
    return AppButton(
      translation: AppStrings.berriesTitle,
      color: AppPalette.primaryColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              BaseScreen(title: AppStrings.berriesTitle, data: berriesData,)),
        );
      },
    );
  }

  AppButton _buildGuavaButton(context) {
    return AppButton(
      translation: AppStrings.guavaTitle,
      color: AppPalette.primaryColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              BaseScreen(title: AppStrings.guavaTitle, data: guavaData,)),
        );
      },
    );
  }

}
