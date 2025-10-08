import 'package:flutter/material.dart';
import 'package:godiet_app/presentation/pages/main_page/main_page.dart';
import '/presentation/pages/onboarding/onboarding_page.dart';
import '/presentation/pages/splash/splash_page.dart';
import '/presentation/pages/onboarding/loading_page.dart';
import '/presentation/pages/onboarding/setup_page.dart';


class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String loading = '/loading';
  static const String setupPage = '/setup_page';
  static const String mainPage = '/main_page';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashPage(),
    onboarding: (context) => const OnboardingPage(),
    loading: (context) => const LoadingPage(),
    setupPage: (context) => const SetupPage(),
    mainPage: (context) => const MainPage(),
  };
}