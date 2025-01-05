import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/cores/utils/helpers/responsive_width.dart';
import 'package:flutter_web/cores/utils/components/texts/text_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 800) {
      ResponsiveWidth.width(key);
    }
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            key: key,
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 100),
            color: AppColors.primary,
          ),
          ElevatedButton(
            onPressed: () {
              ResponsiveWidth.width(key);
            },
            child: TextView(
              rem: 2,
              text: 'Get Widget Width',
            ),
          ),
        ],
      ),
    );
  }
}
