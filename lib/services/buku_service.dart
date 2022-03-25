import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/buku_model.dart';

class BukuService {
  static Future<BukuModel> fetchBukuData() async {
    final response = await http
        .get(Uri.parse('https://penjualan-buku.herokuapp.com/api/buku2'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BukuModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
