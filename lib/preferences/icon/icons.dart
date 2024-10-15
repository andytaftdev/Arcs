// Place fonts/customIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: customIcon
//      fonts:
//       - asset: fonts/customIcon.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'customIcon';

  static const IconData exit = IconData(0xe915, fontFamily: _fontFamily);
  static const IconData favorite = IconData(0xe916, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe918, fontFamily: _fontFamily);
  static const IconData message = IconData(0xe91f, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe925, fontFamily: _fontFamily);
  static const IconData trash = IconData(0xe928, fontFamily: _fontFamily);
}
