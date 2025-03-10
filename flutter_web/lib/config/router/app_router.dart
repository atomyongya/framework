import 'package:flutter/material.dart';
import 'package:flutter_web/features/modals/presentation/screen/modals_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web/config/router/app_routes.dart';
import 'package:flutter_web/features/home/presentation/screen/home_screen.dart';
import 'package:flutter_web/features/date_time/presentation/screen/date_time_screen.dart';
import 'package:flutter_web/features/responsive/presentation/screen/responsive_screen.dart';

GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home.path,
  routes: <RouteBase>[
    GoRoute(
      name: AppRoutes.home.name,
      path: AppRoutes.home.path,
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.responsive.name,
      path: AppRoutes.responsive.path,
      builder: (BuildContext context, GoRouterState state) {
        return ResponsiveScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.datetime.name,
      path: AppRoutes.datetime.path,
      builder: (BuildContext context, GoRouterState state) {
        return DateTimeScreen();
      },
    ),
     GoRoute(
      name: AppRoutes.modals.name,
      path: AppRoutes.modals.path,
      builder: (BuildContext context, GoRouterState state) {
        return ModalsScreen();
      },
    ),
  ],
);
