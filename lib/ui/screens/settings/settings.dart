import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/widgets/app_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
enum Language{arabic,english}
class _SettingsScreenState extends State<SettingsScreen> {
  Language _language=Language.arabic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            // ListTile(
            //   title: const Text('Arabic'),
            //   leading: Radio(
            //     value: Language.arabic,
            //     groupValue: _language,
            //     onChanged: (Language? value) {
            //       setState(() {
            //         _language = value!;
            //       });
            //     },
            //   ),
            // ),
            // ListTile(
            //   title: const Text('English'),
            //   leading: Radio(
            //     value: Language.english,
            //     groupValue: _language,
            //     onChanged: (Language? value) {
            //       setState(() {
            //         _language = value!;
            //       });
            //     },
            //   ),
            // ),
          ],)
          ],
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: BuildAppBar(
        isHomeAppBar: false,
        title: AppStrings.settings,
      ),
    );
  }
}
