import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_style.dart';
import 'custom_check_box.dart';

class TermsAndConidtionWidget extends StatelessWidget {
  const TermsAndConidtionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckBoxWidget(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: AppStrings.iHaveAgreeToOur,
                  style: CustomTextStyles.poppins400style12),
              TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: CustomTextStyles.poppins400style12
                      .copyWith(decoration: TextDecoration.underline)),
            ],
          ),
        ),
      ],
    );
  }
}
