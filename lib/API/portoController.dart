import 'dart:convert';
import 'package:http/http.dart' as http;

import 'portofolio.dart';

class DataController {
  static const String apiUrl =
      'https://script.google.com/macros/s/AKfycbyp7zkImKKXbZA49AkoA1k1Vz0Lx8NOE-Gyson_IDTRDUJk3FHse7ZlZyKOfAnUD0TA/exec';

  Future<List<GetData>> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      List<GetData> data = jsonResponse.map((data) {
        return GetData.fromJson(data);
      }).toList();

      return data;
    } else {
      throw Exception('Failed to load data from the API');
    }
  }
}
