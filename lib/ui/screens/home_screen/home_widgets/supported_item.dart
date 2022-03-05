import 'package:flutter/cupertino.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';

import '../../../resources/app_text_styles.dart';
import '../../../widgets/app_text_display.dart';

class SupportedItem extends StatelessWidget {
  const SupportedItem({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppText(text: "-"),
        5.widthBox,
        AppText(
          translation: title,
          style: AppTextStyles.h3,
        ),
      ],
    );
  }
}
