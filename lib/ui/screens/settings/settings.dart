import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planet/core/bloc/index.dart';
import 'package:planet/core/dependencies/dependency_init.dart';
import 'package:planet/core/enums/app_languages.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/screens/settings/language_button.dart';
import 'package:planet/ui/widgets/app_bar.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
enum Language{arabic,english}
class _SettingsScreenState extends State<SettingsScreen> {
  bool isEnglish = true;

  LanguageBloc _languageBloc=getIt<LanguageBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildArabicLanguageTextField(),
          12.heightBox,
          _buildEnglishLanguageTextField(),
         ],
      ),
    );
  }


  Widget _buildEnglishLanguageTextField() {
    return LanguageButton(
      onTap: () {
        setState(() {
          isEnglish = true;
          _languageBloc.add(LanguageChangeEvent(lang:AppLanguages.english.value));
        });
      },
      language: AppStrings.english,
      isSelected: isEnglish,
    );
  }

  Widget _buildArabicLanguageTextField() {
    return LanguageButton(
      onTap: () {
        setState(() {
          isEnglish = false;
          _languageBloc.add(LanguageChangeEvent(lang:AppLanguages.arabic.value));
        });
      },
      language: AppStrings.arabic,
      isSelected: !isEnglish,
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
