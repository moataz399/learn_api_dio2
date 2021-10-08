import 'package:flutter/material.dart';
import 'package:learn_api_dio/presentation/screens/home_screen.dart';

import 'constants/strings.dart';

class AppRouter {
  AppRouter() {
    String initialRoute;
  }

  Route ? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());

    }
  }
}