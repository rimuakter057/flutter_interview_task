// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../../business_logic/models/product_model.dart';
//
// class ProductService {
//   final String baseUrl = 'https://fakestoreapi.com';
//
//   Future<List<Product>> fetchProducts() async {
//     final response = await http.get(Uri.parse('$baseUrl/products'));
//     if (response.statusCode == 200) {
//       final List data = json.decode(response.body);
//       return data.map((e) => Product.fromJson(e)).toList();
//     } else {
//       throw Exception('Failed to fetch products');
//     }
//   }
// }
