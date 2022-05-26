import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/app_strings.dart';
import '../../widgets/app_bar.dart';

class AgricultureGuide extends StatelessWidget {
  const AgricultureGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(context) ,
    );
  }
  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: BuildAppBar(
        isHomeAppBar: true,
        title: AppStrings.agricultureGuide,
      ),
    );
  }
}
