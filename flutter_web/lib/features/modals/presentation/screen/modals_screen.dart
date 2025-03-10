import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';

class ModalsScreen extends StatefulWidget {
  const ModalsScreen({super.key});

  @override
  State<ModalsScreen> createState() => _ModalsScreenState();
}

class _ModalsScreenState extends State<ModalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: <Widget>[
          DropdownButton(
            value: null,
            items:
                ['Male', 'Female', 'Other'].map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem(value: e, child: Text(e));
            }).toList(),
            onChanged: (_) {},
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
