import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = "https://fakestoreapi.com";
//get request
  static Future<dynamic> get(String endpoint) async {
    final response = await http.get(Uri.parse("$baseUrl/$endpoint"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("GET request failed");
    }
  }
//post request
  static Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(Uri.parse("$baseUrl/$endpoint"),
        headers: {"Content-Type": "application/json"}, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception("POST request failed");
    }
  }
}
