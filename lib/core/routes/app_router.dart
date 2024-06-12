import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => OnBoardingView(),
  )
]);
