import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  const ProductCard({
    Key? key,
    required this.imgUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(SizeManger.s16),
        ),
      ),
      child: Column(
        children: [
          Image.network(
            imgUrl,
            width: SizeManger.s100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: SizeManger.s16),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
