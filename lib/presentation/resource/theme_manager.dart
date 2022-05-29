import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/font_manager.dart';
import 'package:coffee_city/presentation/resource/font_style.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(context) {
  return ThemeData(
      // main colors of the app
      primaryColor: ColorManager.kPrimaryColor,
      primaryColorLight: ColorManager.kPrimaryColor,
      disabledColor: ColorManager.kDisableColor,
      // ripple color
      splashColor: ColorManager.kPrimaryColor.withOpacity(0.7),
      // card view theme
      cardTheme: CardTheme(
        color: ColorManager.kPrimaryColor,
      ),
      // App bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme:
              const IconThemeData(color: Colors.black, size: SizeManger.s25),
          titleTextStyle: getRegularStyle(
              color: Colors.black,
              fontSize: FontSize.s16,
              fontFamily: FontNameManger.poppins)),
      // Button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.kDisableColor,
        buttonColor: ColorManager.kPrimaryColor,
        splashColor: ColorManager.kPrimaryColor.withOpacity(0.7),
      ),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getSemiBoldStyle(
              color: ColorManager.white,
              fontFamily: FontNameManger.poppins,
              fontSize: FontSize.s14),
          primary: ColorManager.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeManger.s28),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.white,
        selectedIconTheme: IconThemeData(color: ColorManager.kPrimaryColor),
        selectedItemColor: ColorManager.kPrimaryColor,
        unselectedItemColor: ColorManager.kDisableColor,
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context)
            .textTheme
            .caption
            ?.copyWith(color: ColorManager.kPrimaryColor),
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .caption
            ?.copyWith(color: ColorManager.kDisableColor),
      ),
      // Text theme
      textTheme: TextTheme(
        headline4: getBoldStyle(
            color: ColorManager.kBlackColor,
            fontSize: FontSize.s22,
            fontFamily: FontNameManger.poppins),
        headline5: getBoldStyle(
            color: ColorManager.kBlackColor,
            fontSize: FontSize.s20,
            fontFamily: FontNameManger.poppins),
        headline6: getBoldStyle(
            color: ColorManager.kBlackColor,
            fontSize: FontSize.s18,
            fontFamily: FontNameManger.poppins),
        subtitle1: getRegularStyle(
            color: ColorManager.kBlackColor, fontSize: FontSize.s14),
        subtitle2: getRegularStyle(
            color: ColorManager.kPrimaryColor,
            fontSize: FontSize.s14,
            fontFamily: FontNameManger.poppins),
        caption: getBoldStyle(color: Colors.red, fontSize: FontSize.s12),
        bodyText1: getRegularStyle(color: ColorManager.kBlackColor),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusColor: ColorManager.kUnderLineColor,
        hoverColor: ColorManager.kUnderLineColor,
        fillColor: ColorManager.kUnderLineColor,
      )
      );
}
