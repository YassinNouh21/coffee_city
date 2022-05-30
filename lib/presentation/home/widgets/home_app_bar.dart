import 'package:coffee_city/presentation/resource/assets_manager.dart';
import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/route_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Good Morning',
              textAlign: TextAlign.left,
            ),
            Text(
              'John Doe',
              textAlign: TextAlign.left,

            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                AssetsManager.buy,
                color: ColorManager.kPrimaryColor,
              ),
              padding: const EdgeInsets.all(SizeManger.s4),
              onPressed: () {
                // Navigator.pushNamed(context, Routes.);
              },
            ),
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, Routes.);
              },
              icon: SvgPicture.asset(
                AssetsManager.userProfile,
                color: ColorManager.kPrimaryColor,
                height: SizeManger.s32,
                width: SizeManger.s32,
              ),
              padding: const EdgeInsets.only(top: SizeManger.s8),
            )
          ],
        )
      ],
    );
  }
}
