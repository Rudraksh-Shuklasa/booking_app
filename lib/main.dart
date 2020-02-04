import 'package:booking_app/utils/constants/color_constansts.dart';
import 'package:flutter/material.dart';

import 'utils/constants/app_constansts.dart';
import 'utils/constants/route_constansts.dart';
import 'utils/navigation_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
          primaryColor: primaryColor,
          primaryColorDark: primaryDarkColor,
          primaryColorLight: primaryLightColor
      ),

      initialRoute: ROUTE_LAUNCH,
      onGenerateRoute: NavigationUtils.generateRoute,

      supportedLocales: [
        const Locale('en', ''),
        // const Locale('es', ''),
      ],
    );
  }
}

