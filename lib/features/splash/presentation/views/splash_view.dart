import 'package:dalel_app/core/database/cache/cahche_helper.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingIsVisited =
        CacheHelper().getData(key: "isOnBoardingIsVisited") ?? false;
    if (isOnBoardingIsVisited == true) {
      delayedNavigate(context, "/signup");
    } else {
      delayedNavigate(context, "/onBoarding");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

void delayedNavigate(context, String path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
