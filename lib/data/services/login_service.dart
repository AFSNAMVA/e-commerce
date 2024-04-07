import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lafyuu_app/data/models/auth_response.dart';
import 'package:lafyuu_app/utils/constants/endpoint.dart';

class LoginService {
  Future<AuthResponse?> login({
    required String email,
    required String password,
  }) async {
    final Uri url = Uri.parse(Endpoint.login);
    final body = {
      "email": email,
      "password": password,
    };

    final http.Response response = await http.post(url, body: body);
    if (response.statusCode ==200) {
      final data = jsonDecode(response.body);
      return AuthResponse.fromJson(data);
    }
    return null;
  }
}
