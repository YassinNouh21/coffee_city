import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resource/color_manager.dart';

class CustomTextField extends StatefulWidget {
  final String prefixIconPath;
  final String hintText;
  final String errorText;

  CustomTextField({
    required this.prefixIconPath,
    required this.hintText,
    required this.errorText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: SizeManger.s8),
        prefixIcon: SvgPicture.asset(
          widget.prefixIconPath,
          color: Colors.black,
          width: SizeManger.s18,
          height: SizeManger.s18,
          fit: BoxFit.scaleDown,
        ),
        hintText: widget.hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.kUnderLineColor,
          ),
        ),
        hintStyle: Theme.of(context).textTheme.caption?.copyWith(
              color: ColorManager.labelColor,
            ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
          color: ColorManager.labelColor,
        )),
      ),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  final String suffixIconPath;
  final String prefixIconPath;
  final String hintText;
  bool obscureText;
  final String errorText;

  CustomPasswordTextField({
    this.suffixIconPath = '',
    required this.prefixIconPath,
    required this.hintText,
    this.obscureText = false,
    required this.errorText,
  });

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  void _showPassword() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: SizeManger.s8),
        prefixIcon: SvgPicture.asset(
          widget.prefixIconPath,
          color: Colors.black,
          width: SizeManger.s18,
          height: SizeManger.s18,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon: IconButton(
          onPressed: _showPassword,
          icon: SvgPicture.asset(
            widget.suffixIconPath,
            color: Colors.black,
            width: SizeManger.s18,
            height: SizeManger.s18,
            fit: BoxFit.scaleDown,
          ),
        ),
        hintText: widget.hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.kUnderLineColor,
          ),
        ),
        hintStyle: Theme.of(context).textTheme.caption?.copyWith(
              color: ColorManager.labelColor,
            ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
          color: ColorManager.labelColor,
        )),
      ),
    );
  }
}
