import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class AglaonemaScreen extends StatelessWidget {
  const AglaonemaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              AppText(
                translation: AppStrings.aglaonema,
              ),
              AppText(
                translation: AppStrings.decorationPlantsAglaonemaSuitableAtmosphere,
              ),
              AppText(
                translation: AppStrings.decorationPlantsAglaonemaReproduction,
              ),
              AppText(
                translation: AppStrings.decorationPlantsAglaonemaCare,
              )
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
        title: AppStrings.aglaonema,
      ),
    );
  }


}
