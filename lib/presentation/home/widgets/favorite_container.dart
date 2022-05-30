import 'package:coffee_city/model/product.dart';
import 'package:coffee_city/presentation/home/widgets/product_card.dart';
import 'package:coffee_city/presentation/resource/app_string.dart';
import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';

class FavoriteContainer extends StatelessWidget {
  final List<Product> products;
  FavoriteContainer({required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(PaddingManger.p20),
      decoration: BoxDecoration(
        color: ColorManager.kPrimaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(PaddingManger.p16),
          topLeft: Radius.circular(PaddingManger.p16),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
              child: Text(HomeString.favorites,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white))),
          const SizedBox(height: PaddingManger.p26),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            mainAxisSpacing: PaddingManger.p26,
            crossAxisSpacing: PaddingManger.p16,
            children: products.map((e) => ProductCard(product: e)).toList(),
          ),
        ],
      ),
    );
  }
}
