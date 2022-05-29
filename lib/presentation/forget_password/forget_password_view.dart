import 'package:coffee_shop/presentation/resource/app_string.dart';
import 'package:coffee_shop/presentation/resource/assets_manager.dart';
import 'package:coffee_shop/presentation/resource/route_manager.dart';
import 'package:coffee_shop/presentation/resource/value_manager.dart';
import 'package:coffee_shop/presentation/shared/proceed_button.dart';
import 'package:coffee_shop/presentation/shared/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: EdgeInsets.symmetric(horizontal: PaddingManger.p45.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeManger.s40.h),
              SizedBox(
                width: double.infinity,
                child: Text(ForgotAppString.forgotPassword,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5),
              ),
              SizedBox(height: SizeManger.s20.h),
              SizedBox(
                width: double.infinity,
                child: Text(
                  ForgotAppString.enterEmail,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              SizedBox(height: SizeManger.s40.h),
              Form(
                child: Column(
                  children: [
                    CustomTextField(
                        prefixIconPath: AssetsManager.messageIcon,
                        hintText: SignInAppStrings.email,
                        errorText: 'Password is required'),
                    SizedBox(
                      height: SizeManger.s100.h,
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
