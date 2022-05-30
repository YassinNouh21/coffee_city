import 'package:coffee_city/model/product.dart';
import 'package:coffee_city/presentation/home/widgets/home_app_bar.dart';
import 'package:coffee_city/presentation/home/widgets/product_today_card.dart';
import 'package:coffee_city/presentation/resource/value_manager.dart';
import 'package:coffee_city/presentation/shared/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/favorite_container.dart';

class HomeView extends StatelessWidget {
  Product product1 = const Product(
      id: '123',
      name: 'aflsjkd',
      description: 'sadfljasfd',
      imageUrl:
          'https://www.costacoffee.com.cy/sites/default/files/styles/products/public/2020-06/Chai%20Latte.png?itok=4tkPa9h1',
      price: 'sdf',
      link: 'asdf',
      category: '',
      isOnDeal: false);
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: PaddingManger.p30),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: PaddingManger.p26),
                child: HomeAppBar()),
            const SizedBox(height: PaddingManger.p16),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: PaddingManger.p26),
              child: ProductTodayCard(
                product: product1,
              ),
            ),
            const SizedBox(height: PaddingManger.p30),
            Expanded(
              child: FavoriteContainer(
                  products: [product1, product1, product1, product1]),
            ),
          ],
        ),
      ),
    );
  }
}
