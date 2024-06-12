import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/custom_nave_bar_skip.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/get_button_final%20_check.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/onboarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 40),
            CustomNaveBar(
              onTap: () {
                customReplacementNavigate(context, "/signup");
              },
            ),
            OnboardingWidgetBody(
              onPageChanged: (p0) {
                setState(
                  () {
                    currentIndex = p0;
                  },
                );
              },
              controller: _pageController,
            ),
            const SizedBox(height: 180),
            GetFinalButton(
                controller: _pageController, currentIndex: currentIndex)
          ],
        ),
      ),
    );
  }
}
