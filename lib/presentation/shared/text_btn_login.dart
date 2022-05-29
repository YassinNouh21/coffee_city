import 'package:coffee_city/presentation/resource/app_string.dart';
import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginTextButton extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback onPressed;

  LoginTextButton({
    required this.leftText,
    required this.rightText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftText,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: ColorManager.kShadeColor),
        ),
        TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)),
          onPressed: onPressed,
          child: Text(
            rightText,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: ColorManager.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
