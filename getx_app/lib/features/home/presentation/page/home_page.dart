import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/profile');
              },
              child: Text('Profile'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Error',
                  'Something went wrong',
                  snackPosition: SnackPosition.BOTTOM
                );
              },
              child: Text('Show SnackBar'),
            )
          ],
        ),
      ),
    );
  }
}
