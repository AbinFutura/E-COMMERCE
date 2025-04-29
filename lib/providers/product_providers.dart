

import 'package:e_commerce_project/models/product_model.dart';
import 'package:e_commerce_project/services/product_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider = Provider((ref) => ProductServices());

final productListProvider = FutureProvider<ProductModel>((ref) async {

  final service = ref.watch(productProvider);
  return service.fetchProduct();

});
