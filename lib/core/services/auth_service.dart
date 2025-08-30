import '../utils/api_client.dart';

class AuthService {
  Future<String> login(String username, String password) async {
    final body = {"username": username, "password": password};
    final data = await ApiClient.post("auth/login", body);
    return data['token'];
  }
}
