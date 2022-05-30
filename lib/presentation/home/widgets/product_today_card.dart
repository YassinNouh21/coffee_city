import 'package:coffee_city/model/product.dart';
import 'package:coffee_city/presentation/resource/app_string.dart';
import 'package:coffee_city/presentation/resource/color_manager.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';

class ProductTodayCard extends StatelessWidget {
  final Product product;
  const ProductTodayCard({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeManger.s130,
      decoration: BoxDecoration(
        color: ColorManager.kPrimaryColor,
        borderRadius: BorderRadius.circular(PaddingManger.p16),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingManger.p16,
        vertical: PaddingManger.p14,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(HomeString.today,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: ColorManager.white)),
                Text(product.name,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          color: ColorManager.white,
                        )),
                Row(
                  children: [
                    Text(product.price,
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: ColorManager.white,
                            )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          size: SizeManger.s16,
                          color: Colors.white,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 7,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                  color: Colors.white,
                  constraints: const BoxConstraints(
                      maxHeight: 85, maxWidth: 115, minWidth: 80, minHeight: 85),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
