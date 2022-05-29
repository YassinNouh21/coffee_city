import 'dart:async';

import 'package:coffee_city/infrastructure/auth/auth_service.dart';
import 'package:coffee_city/model/auth_user.dart';
import 'package:coffee_city/presentation/resource/app_string.dart';
import 'package:coffee_city/presentation/resource/assets_manager.dart';
import 'package:coffee_city/presentation/resource/route_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:coffee_city/presentation/shared/text_btn_login.dart';
import 'package:coffee_city/presentation/shared/text_field.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/auth/auth_error.dart';
import '../shared/proceed_button.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  final _globalKey = GlobalKey<FormState>();
  final _authService = AuthService();

  void _pushToRegisterScreen() {
    Navigator.pushNamed(context, Routes.registerRoute);
  }

  void _pushToForgotScreen() {
    Navigator.pushNamed(context, Routes.forgotPasswordRoute);
  }

  stream() {
    StreamSubscription<AuthUser> streamController;
    streamController = _authService.user.listen((user) {
      print('user $user');
    });
  }

  Future<String?> _getCurrentUser() async {
    try {
      return await _authService.currentUser;
    } catch (e) {
      print('$e as AuthException');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    stream();
    SharedPreferences.getInstance().then((prefs) {
      prefs.clear();
    });
    var temp =  SharedPreferences.getInstance().then((prefs) {
      prefs.getKeys();
    });
    print('initState $temp');
    print('init state');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: PaddingManger.p45),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: SizeManger.s40),
                SizedBox(
                  width: double.infinity,
                  child: Text(SignInAppStrings.signIn,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline5),
                ),
                SizedBox(height: SizeManger.s18),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    SignInAppStrings.welcome,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(height: SizeManger.s40),
                Form(
                  child: Column(
                    children: [
                      CustomTextField(
                          prefixIconPath: AssetsManager.messageIcon,
                          hintText: SignInAppStrings.email,
                          errorText: 'Password is required'),
                      SizedBox(height: SizeManger.s18),
                      CustomPasswordTextField(
                          obscureText: true,
                          suffixIconPath: AssetsManager.showIcon,
                          hintText: SignInAppStrings.password,
                          prefixIconPath: AssetsManager.lockIcon,
                          errorText: 'Password is required'),
                      SizedBox(height: SizeManger.s18),
                      TextButton(
                        onPressed: () {
                          _pushToForgotScreen();
                        },
                        child: Text(
                          SignInAppStrings.forget,
                          style:
                              Theme.of(context).textTheme.subtitle2?.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                      SizedBox(
                        height: SizeManger.s100,
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: ProceedBtn(
                          onPressed: () async {
                            var _auth =
                                await _authService.signUpWithEmailAndPassword(
                                    email: 'yassin@gmail.com',
                                    password: '12asd3456789',
                                    displayName: 'Ahmed');

                            print(await _authService.currentUser.toString());

                            print(_auth?.dialogTitle);
                          },
                        ),
                      ),
                      SizedBox(
                        height: SizeManger.s100.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: LoginTextButton(
                          leftText: SignInAppStrings.newMember,
                          onPressed: _pushToRegisterScreen,
                          rightText: SignInAppStrings.signUp,
                        ),
                      ),
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
