class Product {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String price;
  final String link;
  final String category;
  final bool isOnDeal;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.link,
    required this.category,
    required this.isOnDeal,
  });

  Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      price: json['price'] as String,
      link: json['link'] as String,
      category: json['category'] as String,
      isOnDeal: json['isOnDeal'] as bool,
    );
  }
}
