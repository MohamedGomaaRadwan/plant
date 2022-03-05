import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_text_styles.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';
import 'package:planet/ui/widgets/app_text_display.dart';

class BuildActivityItem extends StatelessWidget {
  BuildActivityItem({
    Key? key, required this.svgIcon, required this.title, required this.onTap,
  }) : super(key: key);
  final String svgIcon;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 160.w,
        height: 160.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 65.w,
                  height: 65.h,
                  child: SvgPicture.asset(svgIcon,color: AppPalette.primaryColor,)),
              8.heightBox,
              AppText(translation: title,style: AppTextStyles.body1.copyWith(color: AppPalette.primaryColor),)
            ],
          ),
        ),
      ),
    );
  }
}
