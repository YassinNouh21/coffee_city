import 'package:coffee_city/presentation/forget_password/forget_password_view.dart';
import 'package:coffee_city/presentation/login/login.dart';
import 'package:coffee_city/presentation/home/home_view.dart';
import 'package:coffee_city/presentation/onboarding/onboarding_view.dart';
import 'package:coffee_city/presentation/register/register_view.dart';
import 'package:coffee_city/presentation/resource/app_string.dart';
import 'package:coffee_city/presentation/splash/splash_view.dart';
import 'package:coffee_city/presentation/vertification/vertification_view.dart';
import 'package:flutter/material.dart';


class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String homeRoute = "/home";
  static const String storeDetailsRoute = "/storeDetails";
  static const String vertificationRoute = "/verification";
  static const String viewRoute = "/view";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LogInView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.vertificationRoute:
        return MaterialPageRoute(builder: (_) => const VerificationView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
