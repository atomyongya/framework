import 'package:flutter/material.dart';
import 'package:flutter_web/config/router/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Web Framework',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
