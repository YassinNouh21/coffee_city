import 'package:flutter/material.dart';

class ColorManager {
  static Color kPrimaryColor = HexColor.fromHex("324A59");
  static Color kSoftWhiteBackgroundColor = HexColor.fromHex("F7F8FB");
  static Color kDeleteBackgroundColor = HexColor.fromHex("FFE5E5");
  static Color kGreenColor = HexColor.fromHex("33E545");
  static Color kWarningColor = HexColor.fromHex("FF3030");
  static Color kDisableColor = HexColor.fromHex("D8D8D8");
  static Color white = HexColor.fromHex("FFFFFF");
  static Color labelColor = HexColor.fromHex("C1C7D0");
  static Color kBlackColor = HexColor.fromHex("000000");
  static Color kUnderLineColor = HexColor.fromHex("C1C7D0");
  static Color kShadeColor = HexColor.fromHex("AAAAAA");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    //* * to check the opacity of the color
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
