
import 'package:e_commerce_project/models/cart_item_model.dart';
import 'package:e_commerce_project/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartProductNotifier extends StateNotifier<List<CartItem>>{
  CartProductNotifier():super([]);



void incrementCartItem(CartItem cartitem){
  if(state.contains(cartitem)){
    
  }
}

//   void removeProduct(int productId) {
//     state = state.where((item) => item.product.id != productId).toList();
//   }

//   void clearCart() {
//     state = [];
//   }

//   double get totalPrice => state.fold(
//       0.0, (total, item) => total + item.product.price! * item.quantity);

  
}