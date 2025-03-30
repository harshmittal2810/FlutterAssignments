import 'package:flutter/material.dart';
import 'package:flutter_assignments/presentation/widgets/screens/dashboard/home_page.dart';
import 'package:flutter_assignments/presentation/widgets/screens/onboading_screen/onboarding_page.dart';

class AppRoutes {
  static const String onBoarding = '/onboardingRoute';
  static const String homePage = '/homePageRoute';
}

class RouteGenerator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.onBoarding:
        return _fadeRoute(OnboardingScreen(), routeSettings);
      case AppRoutes.homePage:
        return _slideRoute(HomePage(), routeSettings);
      default:
        return _fadeRoute(const OnboardingScreen(), routeSettings);
    }
  }

  /// Route is not found, show error
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: const Text("Error")),
            body: const Center(child: Text("No Route")),
          ),
    );
  }

  static PageRouteBuilder _fadeRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  static PageRouteBuilder _slideRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }
}
