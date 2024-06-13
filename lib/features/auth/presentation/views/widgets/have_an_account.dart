import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: text1, style: CustomTextStyles.poppins400style12),
            TextSpan(
                text: text2,
                style: CustomTextStyles.poppins400style12
                    .copyWith(color: AppColors.lightGrey)),
          ],
        ),
      ),
    );
  }
}