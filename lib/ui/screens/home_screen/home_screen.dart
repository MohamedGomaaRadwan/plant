import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_image_paths.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/resources/app_text_styles.dart';
import 'package:planet/ui/screens/home_screen/home_widgets/supported_item.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/app_button.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';
import 'package:planet/ui/widgets/app_text_display.dart';
import '../../resources/app_routes.dart';
import 'home_widgets/build_drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? file;
  String? path;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        drawer: const BuildDrawer(),
        body: SingleChildScrollView(
          child: Container(
            decoration: _buildDecoration(),
            child: AppPadding(
              child: Column(
                children: [
                  20.heightBox,
                  _buildDetails(),
                  50.heightBox,
                  buildFilePath(),
                  10.heightBox,
                  _buildCameraButton(),
                  20.heightBox,
                  _buildGalleryButton(),
                  20.heightBox,
                  _buildDiseaseDetailsButton(),
                  20.heightBox,
                  _buildSupportedPlant(),
                  10.heightBox,
                  _buildSupportedPlantDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AppImages.flower),
        fit: BoxFit.cover,
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: BuildAppBar(
        isHomeAppBar: true,
        title: AppStrings.appName,
        isShowNotificationIcon: true,
      ),
    );
  }

  Widget buildFilePath() {
    return file != null ? AppText(text: file!.path) : const AppText(text: '');
  }

  AppButton _buildGalleryButton() {
    return AppButton(
      translation: AppStrings.gallery,
      color: AppPalette.primaryColor,
      onTap: () => _pickImage(),
    );
  }

  AppButton _buildCameraButton() {
    return AppButton(
      translation: AppStrings.camera,
      color: AppPalette.primaryColor,
      onTap: () => _openCamera(),
    );
  }

  AppButton _buildDiseaseDetailsButton() {
    return AppButton(
      translation: AppStrings.diseaseDetails,
      color: AppPalette.primaryColor,
      onTap: () => pushName(context, AppRoute.diseaseDetails),
    );
  }

  AppText _buildDetails() {
    return AppText(
      maxLines: 5,
      translation: AppStrings.details,
      style: AppTextStyles.h3,
    );
  }

  Widget _buildSupportedPlant() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          translation: AppStrings.supportedPlant,
          style: AppTextStyles.h3,
        ),
      ],
    );
  }

  Widget _buildSupportedPlantDetails() {
    return AppPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SupportedItem(title: AppStrings.apples),
          SupportedItem(title: AppStrings.bellPepper),
          SupportedItem(title: AppStrings.cherry),
          SupportedItem(title: AppStrings.citrus),
          SupportedItem(title: AppStrings.corn),
          SupportedItem(title: AppStrings.grape),
          SupportedItem(title: AppStrings.peach),
          SupportedItem(title: AppStrings.potato),
          SupportedItem(title: AppStrings.strawberry),
          SupportedItem(title: AppStrings.tomatoes),
        ],
      ),
    );
  }

  Future _pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        file = imageTemp;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future _openCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        file = imageTemp;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
