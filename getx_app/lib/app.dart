import 'package:app/config/app_router/route_paths.dart';
import 'package:app/features/widgets/presentation/page/interactive_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:app/features/home/presentation/page/home_page.dart';
import 'package:app/features/profile/presentation/page/profile_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InteractivePage(),
    );
  }
}
