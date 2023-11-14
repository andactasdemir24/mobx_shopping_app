import 'dart:convert';

import 'package:mobx_shopping_app/app/data/Models/cart_item_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      final List<dynamic> parsedResponse = json.decode(response.body);
      final List<Product> products = parsedResponse.map((data) => Product.fromJson(data)).toList();
      return products;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
