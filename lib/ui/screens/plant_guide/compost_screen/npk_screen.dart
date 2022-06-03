import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class NPKScreen extends StatelessWidget {
  const NPKScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [
              AppText(
                translation: AppStrings.compostNPK,
              ),
              AppText(
                translation: AppStrings.compostNPKNitrogen,
              ),
              AppText(
                translation: AppStrings.compostNPKPhosphorous,
              ),
              AppText(
                translation: AppStrings.compostNPKPotassium,
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
        title: AppStrings.yeastFeeding,
      ),
    );
  }


}
