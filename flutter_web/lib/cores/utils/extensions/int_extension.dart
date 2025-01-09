extension IntExtension on int {
  String toHexString(){
    return toRadixString(16).substring(2).toUpperCase();
  }
}
