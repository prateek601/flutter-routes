import 'package:flutter/material.dart';
import 'package:flutter_routes/routes.dart';
import 'package:flutter_routes/main.dart';
import 'package:flutter_routes/unknown.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const FirstScreen());
      case Routes.secondScreen:
        String data = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => SecondPage(title: data));
      default:
        return MaterialPageRoute(builder: (context) => const UnKnown());
    }
  }
}
