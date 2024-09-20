import 'package:bud/core/routing/platform_page_route.dart';
import 'package:bud/core/routing/undefined_route_screen.dart';
import 'package:flutter/cupertino.dart';
import 'routes.dart';

class RouteGenerator {
  static Route generateBaseRoute(RouteSettings settings) {
    Map? arguments = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
        // case Routes.splashScreen:
        //   return platformPageRoute(const SplashScreen());


      default:
        return platformPageRoute(const UndefinedRouteScreen());
    }
  }
}
