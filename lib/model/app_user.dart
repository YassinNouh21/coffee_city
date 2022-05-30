import 'package:coffee_city/model/product.dart';
import 'package:coffee_city/model/product.dart';

class AppUser {
  final String uid;
  final List<Product> bookmark;
  final List<Product> cart;
  final List<Product> history;

  const AppUser({
    required this.uid,
    this.bookmark = const [],
    this.cart =const [] ,
    this.history = const [],
  });
}
