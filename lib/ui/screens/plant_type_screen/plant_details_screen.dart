import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';
import '../../resources/app_palette.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_padding.dart';
import '../../widgets/app_text_display.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  File? file;
  String? path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child:AppPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildImage(),
              20.heightBox,
              _buildCameraButton(),
              20.heightBox,
              _buildGalleryButton(),
              20.heightBox,
              _buildDiseaseButton(),
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
        isHomeAppBar: true,
        title: AppStrings.details,
      ),
    );
  }

  AppButton _buildGalleryButton() {
    return AppButton(
      translation: AppStrings.gallery,
      color: AppPalette.primaryColor,
      onTap: () => _pickImage(),
    );
  }

  AppButton _buildDiseaseButton() {
    return AppButton(
      translation: AppStrings.diseaseDetails,
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

  Widget _buildFilePath() {
    return file != null ? AppText(text: file!.path) : const AppText(text: '');
  }

  Widget _buildImage() {
    if(file !=null) {
      return SizedBox(
      height: 200.h,
      width: 1.sw,
      child: Image.file(File(file!.path)),
    );
    }
    else{
      return Container();
    }
  }

}
