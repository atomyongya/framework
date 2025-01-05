import 'package:flutter_web/cores/utils/helpers/responsive_height.dart';
import 'package:flutter_web/cores/utils/helpers/responsive_text.dart';
import 'package:flutter_web/cores/utils/helpers/responsive_width.dart';

/// The [Responsive] class ensures that its objects are instantiated only once,
/// following the singleton pattern.
///
/// All classes within [Responsive] must be stateless to maintain this behavior.
/// Do not include classes that rely on state or have side effects.
class Responsive {
  static ResponsiveText text = ResponsiveText();
  static ResponsiveWidth width = ResponsiveWidth();
  static ResponsiveHeight height = ResponsiveHeight();
}
