extension AppStringExtension on String {
  String capitalizeAll() {
    return split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  String toCapitalize() => this[0].toUpperCase() + substring(1);

  String pickWord({int index = 0}) {
    final List<String> words = split(' ');
    return words[index];
  }
}
