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
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      iconSize: SizeManger.s14,
      onTap: _onItemTapped,
      selectedItemColor: ColorManager.kPrimaryColor,
      unselectedItemColor: ColorManager.kDisableColor,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.home,
              color: ColorManager.kShadeColor),
          activeIcon: SvgPicture.asset(AssetsManager.home,
              color: ColorManager.kPrimaryColor),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.menu,
              color: ColorManager.kShadeColor),
          activeIcon: SvgPicture.asset(AssetsManager.menu,
              color: ColorManager.kPrimaryColor),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.order,
              color: ColorManager.kShadeColor),
          activeIcon: SvgPicture.asset(AssetsManager.order,
              color: ColorManager.kPrimaryColor),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsManager.reward,
              color: ColorManager.kShadeColor),
          activeIcon: SvgPicture.asset(AssetsManager.reward,
              color: ColorManager.kPrimaryColor),
          label: 'Rewards',
        ),
      ],
    );
  }
}
