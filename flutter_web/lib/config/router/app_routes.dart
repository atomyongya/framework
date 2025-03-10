import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:universal_platform/universal_platform.dart';

enum AppRoutes {
  home,
  responsive,
  datetime,
  modals;

  String get path {
    switch (this) {
      case home:
        return '/';
      case responsive:
        return '/responsive';
      case datetime:
        return '/datetime';
      case modals:
        return '/modals';
    }
  }

  Future<void> go(
    BuildContext context, {
    Object? extra,
    Function(Object?)? whenComplete,
  }) async {
    if (UniversalPlatform.isWeb) {
      context.go(path, extra: extra);
    } else {
      Object? object = await context.push(path, extra: extra);
      if (whenComplete != null) {
        whenComplete(object);
      }
    }
  }
}
