import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import 'package:planet/ui/widgets/app_text_display.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key, required this.data, required this.title})
      : super(key: key);
  final List<String> data;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Column(
            children: List.generate(
              data.length,
              (index) => _buildTextWidget(data[index]),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: BuildAppBar(
        isHomeAppBar: false,
        title: title,
      ),
    );
  }

  Widget _buildTextWidget(String text) {
    return AppText(translation: text,overflow: TextOverflow.ellipsis,);
  }
}
