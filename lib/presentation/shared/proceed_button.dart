import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';

class ProceedBtn extends StatelessWidget {
  final VoidCallback onPressed;
  const ProceedBtn({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: ColorManager.kPrimaryColor, // Button color
        child: InkWell(
          splashColor:
              ColorManager.kPrimaryColor.withOpacity(0.6), // Splash color
          onTap: onPressed,
          child: const SizedBox(
            width: SizeManger.s65,
            height: SizeManger.s65,
            child: Icon(
              Icons.arrow_forward,
              size: SizeManger.s32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}