import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// Local DateTime Custom Function
  String timeFormat() {
    return DateFormat('h:mm:ss a').format(this);
  }

  String dateFormat() {
    return DateFormat('yyy-MM-dd').format(this);
  }

  /// UTC DateTime Custom Function
  String utc(){
    return toUtc().toString();
  }

  String utcTimeFormat() {
    return DateFormat('h:mm:ss a').format(toUtc());
  }

  String utcDateFormat() {
    return DateFormat('yyy-MM-dd').format(toUtc());
  }
}
