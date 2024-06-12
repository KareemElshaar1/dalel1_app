import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_widget.dart';

class OnboardingWidgetBody extends StatelessWidget {
  OnboardingWidgetBody({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(Assets.imagesOnBoarding1),
                  fit: BoxFit.fill,
                )),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(
                controller: _pageController,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          );
        },
      ),
    );
  }
}
