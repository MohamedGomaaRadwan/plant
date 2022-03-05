import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';

import '../../widgets/app_text_display.dart';

class DiseaseDetailsItem extends StatelessWidget {
  const DiseaseDetailsItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImage(),
        _buildTitle(),
      ],
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
