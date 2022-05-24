import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class CompostScreen extends StatelessWidget {
  const CompostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [_buildNpk(context), _buildYeastFeeding(context)],
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
        title: AppStrings.compost,
      ),
    );
  }

  Widget _buildNpk(BuildContext context) {
    return AppButton(
      translation: AppStrings.npk,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.roofPreparation),
    );
  }

  Widget _buildYeastFeeding(BuildContext context) {
    return AppButton(
      translation: AppStrings.compostYeastFeeding,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.roofPreparation),
    );
  }
}
