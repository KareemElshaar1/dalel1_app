import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomNaveBar extends StatelessWidget {
  const CustomNaveBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyles.poppins300style16
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
