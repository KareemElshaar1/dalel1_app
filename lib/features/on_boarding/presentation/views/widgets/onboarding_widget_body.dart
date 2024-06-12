import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_widget.dart';

class OnboardingWidgetBody extends StatelessWidget {
  OnboardingWidgetBody({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.imagesOnBoarding1),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(
                controller: _pageController,
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      "Explore The history with Dalel in a smart way",
                      style: CustomTextStyles.poppins500style24
                          .copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Explore The history with Dalel in a smart way",
                      style: CustomTextStyles.poppins300style16,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
