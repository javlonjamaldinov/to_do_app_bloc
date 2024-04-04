import 'package:flutter/material.dart';
import 'package:to_do_app_bloc/screens/recylce_bin_screen.dart';
import 'package:to_do_app_bloc/screens/tabs_screen.dart';
import 'package:to_do_app_bloc/screens/pending_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecyleBin.id:
        return MaterialPageRoute(
          builder: (_) => const RecyleBin(),
        );
      case TabsScreen.id:
        return MaterialPageRoute(
          builder: (_) =>  TabsScreen(),
        );
      default:
        return null;
    }
  }
}
