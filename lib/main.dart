import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      // router --> routes folder
      routerConfig: router,
    );
  }
}
