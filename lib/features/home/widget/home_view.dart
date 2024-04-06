import 'package:flutter/material.dart';
import 'package:widgets/buttons/app_button.dart';

class HomeView extends StatefulWidget {
  static const String route = '/';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppButton(
              onTap: () {},
              text: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}
