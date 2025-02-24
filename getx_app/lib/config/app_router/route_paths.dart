enum RoutePaths {
  home,
  profile,
  interactive;

  String get path {
    switch (this) {
      case home:
        return '/';
      case profile:
        return '/${profile.name}';
      case interactive:
        return '/${interactive.name}';
    }
  }
}
