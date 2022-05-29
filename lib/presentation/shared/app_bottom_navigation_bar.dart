import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resource/assets_manager.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      iconSize: SizeManger.s14,
      onTap: _onItemTapped,
      selectedItemColor: ColorManager.kSoftWhiteBackgroundColor,
      unselectedItemColor: ColorManager.kDisableColor,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.menu),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.order),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.reward),
          label: 'Rewards',
        ),
      ],
    );
  }
}
