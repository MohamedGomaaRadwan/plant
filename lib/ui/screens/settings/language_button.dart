import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/app_palette.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_padding.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key, required this.isSelected, required this.language, required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final String language;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return AppPadding(
        padding: EdgeInsets.symmetric(horizontal: 47.w),
        child: Container(
            width: 1.sw,
            child: AppButton(
              onTap: onTap,
              translation: language,
              color: isSelected ? Colors.white : AppPalette.primaryColor,
              textColor: isSelected ? AppPalette.primaryColor : Colors.white,
              borderColor: isSelected ? AppPalette.primaryColor : Colors.white,
            ))
    );
  }
}
