import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/resources/app_image_paths.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import '../../resources/app_strings.dart';
import '../../widgets/app_bar.dart';
import 'disease_details_item.dart';

class DiseaseDetailsScreen extends StatelessWidget {
  DiseaseDetailsScreen({Key? key}) : super(key: key);

  List<Widget> items = const [
    DiseaseDetailsItem(image: AppImages.apple, title: AppStrings.apples),
    DiseaseDetailsItem(
        image: AppImages.bellPepper, title: AppStrings.bellPepper),
    DiseaseDetailsItem(image: AppImages.cherry, title: AppStrings.cherry),
    DiseaseDetailsItem(image: AppImages.citrus, title: AppStrings.citrus),
    DiseaseDetailsItem(image: AppImages.corn, title: AppStrings.corn),
    DiseaseDetailsItem(image: AppImages.grape, title: AppStrings.grape),
    DiseaseDetailsItem(image: AppImages.potato, title: AppStrings.potato),
    DiseaseDetailsItem(image: AppImages.peach, title: AppStrings.peach),
    DiseaseDetailsItem(
        image: AppImages.strawberry, title: AppStrings.strawberry),
    DiseaseDetailsItem(image: AppImages.tomato, title: AppStrings.tomatoes),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: AppPadding(
          child: GridView.count(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(items.length, (index) {
              return items[index];
            }),
          ),
        ),
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: BuildAppBar(
        isHomeAppBar: true,
        title: AppStrings.diseaseDetails,
        isShowNotificationIcon: true,
      ),
    );
  }
}
