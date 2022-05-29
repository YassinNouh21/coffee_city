import 'package:coffee_city/presentation/resource/font_style.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:coffee_city/presentation/shared/proceed_button.dart';
import 'package:coffee_city/presentation/shared/text_btn_login.dart';
import 'package:coffee_city/presentation/shared/text_field.dart';
import 'package:flutter/material.dart';

import '../resource/app_string.dart';
import '../resource/assets_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  void _pushToLogInScreen() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: PaddingManger.p45),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: SizeManger.s40),
                SizedBox(
                  width: double.infinity,
                  child: Text(RegisterAppStrings.signUp,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline5),
                ),
                SizedBox(height: SizeManger.s18),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    RegisterAppStrings.createAccount,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(height: SizeManger.s40),
                Form(
                  child: Column(
                    children: [
                      CustomTextField(
                          prefixIconPath: AssetsManager.userProfile,
                          hintText: RegisterAppStrings.username,
                          errorText: 'Password is required'),
                      SizedBox(height: SizeManger.s18),
                      CustomTextField(
                          prefixIconPath: AssetsManager.mobileNumber,
                          hintText: RegisterAppStrings.mobileNumber,
                          errorText: 'Password is required'),
                      SizedBox(height: SizeManger.s18),
                      CustomTextField(
                          prefixIconPath: AssetsManager.messageIcon,
                          hintText: RegisterAppStrings.emailAddress,
                          errorText: 'Password is required'),
                      SizedBox(height: SizeManger.s18),
                      CustomPasswordTextField(
                          obscureText: true,
                          suffixIconPath: AssetsManager.showIcon,
                          hintText: RegisterAppStrings.password,
                          prefixIconPath: AssetsManager.lockIcon,
                          errorText: 'Password is required'),
                      SizedBox(height: SizeManger.s18),
                      Text(
                        RegisterAppStrings.terms,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontSize: FontSize.s12,
                            ),
                      ),
                      SizedBox(
                        height: SizeManger.s32,
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: ProceedBtn(
                          onPressed: () {
                            _pushToLogInScreen();
                          },
                        ),
                      ),
                      SizedBox(height: SizeManger.s65),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: LoginTextButton(
                          leftText: RegisterAppStrings.alreadyMember,
                          onPressed: _pushToLogInScreen,
                          rightText: RegisterAppStrings.signIn,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
