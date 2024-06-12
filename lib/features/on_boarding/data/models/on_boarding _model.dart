import 'package:dalel_app/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imagePath: Assets.imagesOnBoarding1,
      title: "Explore The history with Dalel in a smart way",
      subTitle: "Explore The history with Dalel in a smart way"),
  OnBoardingModel(
      imagePath: Assets.imagesOnBoarding2,
      title: "Explore The history with Dalel in a smart way",
      subTitle: "Explore The history with Dalel in a smart way"),
  OnBoardingModel(
      imagePath: Assets.imagesOnBoarding,
      title: "Explore The history with Dalel in a smart way",
      subTitle: "Explore The history with Dalel in a smart way"),
];
