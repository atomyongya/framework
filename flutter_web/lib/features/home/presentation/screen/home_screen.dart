import 'package:flutter/material.dart';
import 'package:flutter_web/config/router/app_routes.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/cores/utils/components/texts/text_view.dart';
import 'package:flutter_web/cores/utils/extensions/text_extensions.dart';
import 'package:flutter_web/cores/utils/components/buttons/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<AppRoutes> _routes;

  @override
  void initState() {
    super.initState();
    _routes = AppRoutes.values.toList();
    _routes.removeWhere((AppRoutes route) {
      return route.name == AppRoutes.home.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.width / 8,
            horizontal: size.width / 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextView(
                rem: 4,
                text: 'Home Screen',
              ),
              SizedBox(height: 32),
              Flexible(
                child: GridView.builder(
                  itemCount: _routes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    AppRoutes route = _routes[index];
                    return AppButton(
                      onTap: () {
                        route.go(context);
                      },
                      label: '${route.name.toCapitalize()} Screen',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
