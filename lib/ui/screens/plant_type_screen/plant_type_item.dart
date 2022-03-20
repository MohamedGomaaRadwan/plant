import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_routes.dart';
import '../../widgets/app_text_display.dart';

class PlantTypeItem extends StatelessWidget {
  const PlantTypeItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>pushName(context, AppRoute.plantDetails),
      child: Column(
        children: [
          _buildImage(),
          _buildTitle(),
        ],
      ),
    );
  }

  SizedBox _buildImage() {
    return SizedBox(
      height: 150.h,
      width: 100.w,
      child: Image.asset(image),
    );
  }

  Widget _buildTitle() {
    return Center(
        child: AppText(
      translation: title,
    ));
  }
}
