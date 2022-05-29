import 'package:coffee_city/presentation/resource/font_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '';

TextStyle _getTextStyle(
    double fontSize, String? fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

String? _selectGoogleFontFamily([String? fontFamily]) {
  switch (fontFamily) {
    case 'Poppins':
      return GoogleFonts.poppins().fontFamily;
    default:
      return GoogleFonts.dmSans().fontFamily;
  }
}

// regular style 12

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(fontSize, _selectGoogleFontFamily(fontFamily),
      FontWeightManager.regular, color);
}
// light text style 12

TextStyle getLightStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(fontSize, _selectGoogleFontFamily(fontFamily),
      FontWeightManager.light, color);
}
// bold text style

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(fontSize, _selectGoogleFontFamily(fontFamily),
      FontWeightManager.bold, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(fontSize, _selectGoogleFontFamily(fontFamily),
      FontWeightManager.semiBold, color);
}

// medium text style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(fontSize, _selectGoogleFontFamily(fontFamily),
      FontWeightManager.medium, color);
}
