import 'package:coffee_city/model/product.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingManger.p20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(PaddingManger.p16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.white,
            constraints:const BoxConstraints(maxHeight: 85, maxWidth: 115, minWidth: 80, minHeight: 85),
            child: Image.network(product.imageUrl ,fit: BoxFit.fitWidth,)),
          Text(product.name),
        ],
      ),
    );
  }
}
