import 'package:coffee_city/presentation/home/widgets/home_app_bar.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:coffee_city/presentation/shared/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(padding: EdgeInsets.symmetric(horizontal: PaddingManger.p26), child: HomeAppBar()),
        ],
      ),
    );
  }
}
