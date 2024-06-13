import 'package:dalel_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => OnBoardingView(),
  ),
  GoRoute(
    path: "/signup",
    builder: (context, state) => SignUpView(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => SignInView(),
  )
]);
