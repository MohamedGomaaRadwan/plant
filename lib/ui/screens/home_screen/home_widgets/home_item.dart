import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';
import 'package:planet/ui/widgets/app_text_display.dart';

class BuildHomeItem extends StatelessWidget {
  const BuildHomeItem({
    Key? key, required this.title, required this.svgIcon, required this.onTap,
  }) : super(key: key);
final String title;
final String svgIcon;
final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: AppPadding(
          padding: EdgeInsets.symmetric(horizontal:16.w),
          child: Row(
            children: [
              SizedBox(
                width: 40.w,
                height: 40.h,
                child: SvgPicture.asset(
                  svgIcon,
                  color: AppPalette.primaryColor,
                ),
              ),
              16.widthBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(translation: title,maxLines: 2,),
                ],),
            ],
          ),
        ),
      ),
    );
  }
}
