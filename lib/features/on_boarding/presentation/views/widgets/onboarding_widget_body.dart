import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boarding%20_model.dart';
import 'package:flutter/material.dart';

import 'custom_smooth_page_widget.dart';

class OnboardingWidgetBody extends StatelessWidget {
  OnboardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});

  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        // smooth indicator
        controller: controller,

        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // image
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBoardingData[index].imagePath),
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(
                controller: controller,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                onBoardingData[index].title,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                onBoardingData[index].subTitle,
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
