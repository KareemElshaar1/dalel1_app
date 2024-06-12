import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/custom_nave_bar_skip.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/onboarding_widget_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_btn.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 40),
            const CustomNaveBar(),
            OnboardingWidgetBody(),
            SizedBox(height: 180),
            const CustomButton(
              text: AppStrings.next,
            ),
          ],
        ),
      ),
    );
  }
}
