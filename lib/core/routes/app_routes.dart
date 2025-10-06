import 'package:flutter/material.dart';
import '/presentation/pages/onboarding/onboarding_page.dart';
import '/presentation/pages/splash/splash_page.dart';
import '/presentation/pages/onboarding/loading_page.dart';


class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String loading = '/loading';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashPage(),
    onboarding: (context) => const OnboardingPage(),
    loading: (context) => const LoadingPage(),
  };
}