import 'dart:async';

import 'package:coffee_city/presentation/resource/assets_manager.dart';
import 'package:coffee_city/presentation/resource/route_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;
  
  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(Routes.loginRoute);
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(AssetsManager.coffeeLogo),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsManager.splashImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
