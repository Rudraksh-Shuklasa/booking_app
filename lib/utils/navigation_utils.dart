
import 'package:booking_app/ui/launch/home_screen.dart';
import 'package:booking_app/ui/launch/launch_screen.dart';
import 'package:flutter/material.dart';

import 'constants/route_constansts.dart';

class NavigationUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ROUTE_LAUNCH:
        return MaterialPageRoute(builder: (_) => LaunchScreen());
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return _errorRoute(" Comming soon...");
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: Text('Error')),
          body: Center(child: Text(message)));
    });
  }

  static void pushReplacement(BuildContext context, String routeName,
      {Object arguments}) {
    Navigator.of(context).pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> push(BuildContext context, String routeName,
      {Object arguments}) {
    return Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static void pop(BuildContext context, {dynamic args}) {
    Navigator.of(context).pop(args);
  }

  static Future<dynamic> pushAndRemoveUntil(
      BuildContext context, String routeName,
      {Object arguments}) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }
}
