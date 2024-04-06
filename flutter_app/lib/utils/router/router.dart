import 'package:flutter/material.dart';
import 'package:flutter_app/features/home/widget/home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.route:
      return MaterialPageRoute(
        settings: RouteSettings(
          name: settings.name,
          arguments: settings.arguments,
        ),
        builder: (BuildContext context) => const HomeView(),
      );

    default:
      return MaterialPageRoute(
        settings: RouteSettings(
          name: settings.name,
          arguments: settings.arguments,
        ),
        builder: (BuildContext context) => const HomeView(),
      );
  }
}
