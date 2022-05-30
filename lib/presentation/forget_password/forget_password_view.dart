import 'package:coffee_city/presentation/resource/app_string.dart';
import 'package:coffee_city/presentation/resource/assets_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:coffee_city/presentation/shared/proceed_button.dart';
import 'package:coffee_city/presentation/shared/text_field.dart';
import 'package:flutter/material.dart';

//ForgotAppString
class ForgotPasswordView extends StatelessWidget {

  void _pushToLoginScreen(BuildContext context) {
    Navigator.of(context).pop();
  }

  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: PaddingManger.p45),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: SizeManger.s40),
              SizedBox(
                width: double.infinity,
                child: Text(ForgotAppString.forgotPassword,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5),
              ),
              const SizedBox(height: SizeManger.s20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  ForgotAppString.enterEmail,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              const SizedBox(height: SizeManger.s40),
              Form(
                child: Column(
                  children: [
                    CustomTextField(
                        prefixIconPath: AssetsManager.messageIcon,
                        hintText: SignInAppStrings.email,
                        errorText: 'Password is required'),
                    const SizedBox(
                      height: SizeManger.s100,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: ProceedBtn(
                        onPressed: () {
                          _pushToLoginScreen(context);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
