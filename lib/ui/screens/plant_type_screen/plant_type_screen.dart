import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/resources/app_image_paths.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import '../../resources/app_strings.dart';
import '../../widgets/app_bar.dart';
import 'plant_type_item.dart';

class PlantTypeScreen extends StatelessWidget {
  const PlantTypeScreen({Key? key}) : super(key: key);

  final List<Widget> items = const [
    PlantTypeItem(image: AppImages.apple, title: AppStrings.apples),
    PlantTypeItem(image: AppImages.bellPepper, title: AppStrings.bellPepper),
    PlantTypeItem(image: AppImages.cherry, title: AppStrings.cherry),
    PlantTypeItem(image: AppImages.citrus, title: AppStrings.citrus),
    PlantTypeItem(image: AppImages.corn, title: AppStrings.corn),
    PlantTypeItem(image: AppImages.grape, title: AppStrings.grape),
    PlantTypeItem(image: AppImages.potato, title: AppStrings.potato),
    PlantTypeItem(image: AppImages.peach, title: AppStrings.peach),
    PlantTypeItem(image: AppImages.strawberry, title: AppStrings.strawberry),
    PlantTypeItem(image: AppImages.tomato, title: AppStrings.tomatoes),
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
        title: AppStrings.choosePlantType,
      ),
    );
  }
}
