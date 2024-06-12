import 'package:flutter/material.dart';

import '../../../../../core/functions/navigation.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../data/models/on_boarding _model.dart';

class GetFinalButton extends StatelessWidget {
  const GetFinalButton(
      {super.key, required this.currentIndex, required this.controller});

  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, "/signup");
            },
          ),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, "/signIn");
            },
            child: const Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16,
            ),
          ),
          const SizedBox(height: 15)
        ],
      );
    } else {
      return CustomButton(
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 150),
              curve: Curves.bounceIn);
        },
        text: AppStrings.next,
      );
    }
  }
}
