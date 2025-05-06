// api calls, local storage, firebase,  etc
import 'dart:convert';

import 'package:e_commerce_project/models/product_model.dart';
import 'package:http/http.dart' as http;


class ProductServices {
  static const String apiurl = 'https://dummyjson.com/products';

  // fetch products

  Future<ProductModel> fetchProduct() async {
    try {
      final response = await http.get(Uri.parse(apiurl));
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        return ProductModel.fromJson(responseBody);
      }
    } catch (e) {
      print(e);
    }
    return ProductModel();
  }
}
