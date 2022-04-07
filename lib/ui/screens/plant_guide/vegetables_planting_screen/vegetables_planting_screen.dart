import 'package:flutter/material.dart';
import 'package:planet/ui/helper/index.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/index.dart';

class VegetablesPlanting extends StatelessWidget {
  const VegetablesPlanting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
      body:SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: [

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

}
