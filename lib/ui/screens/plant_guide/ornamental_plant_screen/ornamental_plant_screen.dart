import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class OrnamentalPlant extends StatelessWidget {
  const OrnamentalPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              _buildAglaonema(context),
              10.heightBox,
              _buildBamboo(context)
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
        title: AppStrings.ornamentalPlant,
      ),
    );
  }

  Widget _buildAglaonema(BuildContext context){
    return AppButton(
      translation: AppStrings.aglaonema,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.aglaonema),
    );
  }

  Widget _buildBamboo(BuildContext context){
    return AppButton(
      translation: AppStrings.bamboo,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.bamboo),
    );
  }

}
