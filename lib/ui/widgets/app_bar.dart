import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet/core/bloc/index.dart';
import 'package:planet/core/enums/app_languages.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';
import '../helper/navigator.dart';
import '../resources/app_icons.dart';
import '../resources/app_palette.dart';
import '../resources/app_routes.dart';
import '../resources/app_text_styles.dart';
import 'app_padding.dart';
import 'app_text_display.dart';

class BuildAppBar extends StatelessWidget {
  BuildAppBar({
    Key? key,
    required this.title,
    this.isHomeAppBar,
  }) : super(key: key);
  bool? isHomeAppBar = false;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      leading: isHomeAppBar == true
          ? null
          : IconButton(
              icon: LanguageBloc.lang == AppLanguages.arabic.value
                  ? const Icon(Icons.arrow_back_ios_outlined)
                  : const Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () =>
                  isHomeAppBar == true ? null : Navigator.of(context).pop(),
            ),
      backgroundColor: AppPalette.textWhiteColor,
      elevation: 0,
      title: _buildTitle(),
      actions: [50.widthBox],
    );
  }

  Widget _buildTitle() {
    return Center(
      child: AppText(
        translation: title,
        style: AppTextStyles.h2_20.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  List<Widget> _buildIcon(context) {
    return [
      AppPadding(
        child: InkWell(
          onTap: () {
            pushName(context, AppRoute.notification);
          },
          child: SvgPicture.asset(
            AppIcons.notification,
            color: Colors.black,
          ),
        ),
      ),
    ];
  }
}
