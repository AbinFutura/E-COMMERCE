// Data models
//import 'package:e_commerce_project/models/product_model.dart';

class CartItem {
  final String name;
  final String imageUrl;
  final double price;
  final double? offerPrice;
  final double? discountPercentage;
  int quantity;

  CartItem({this.offerPrice, this.discountPercentage, 
    required this.name,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
     
  });

  
}