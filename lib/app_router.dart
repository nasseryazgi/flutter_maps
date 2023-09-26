import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps/presestation/screens/login_screen.dart';

class AppRouter {
  Route? generateRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}
