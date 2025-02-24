import 'package:flutter/material.dart';
import 'package:app/features/widgets/presentation/page/interactive_page.dart';

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
