import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_themes/themes/app_themes.dart';
import 'package:app_themes/themes/base_themes.dart';
import 'package:flutter_app/utils/router/router.dart';
import 'package:flutter_app/features/posts/widget/posts_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // Theme of an app.
  final BaseTheme _theme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<BaseTheme>(
      create: (context) => _theme,
      child: MaterialApp(
        theme: _theme.switchTheme(),
        home: const PostsView(),
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
