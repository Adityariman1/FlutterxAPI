import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class UserService {
  static Future<UserModel> fetchUserData() async {
    final response = await http
        .get(Uri.parse('https://penjualan-buku.herokuapp.com/api/user2'));

    if (response.statusCode == 200) {
      var data = response.body;
      return UserModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
