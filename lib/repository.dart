import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:rentcarapp/model.dart';

class Repository{
  final _baseUrl = 'https://637a3475702b9830b9e8b574.mockapi.io/catalog';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if(response.statusCode == 200) {
        print(response.body);
        Iterable it =  jsonDecode(response.body);
        List<Catalog> catalog = it.map((e) => Catalog.fromJson(e)).toList();
        return catalog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}