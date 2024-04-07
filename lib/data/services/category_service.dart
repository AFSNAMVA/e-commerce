import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu_app/data/models/category_response.dart';
import 'package:lafyuu_app/utils/constants/endpoint.dart';

class CategoryService {
  Future<List<CaregoryResoponse>> getCategory() async {
    final Uri url = Uri.parse(Endpoint.category);
    final Response category = await get(url);
    if (category.statusCode == 200) {
     
      final List data = jsonDecode(category.body);
      final result = data.map((e) => CaregoryResoponse.fromJson(e)).toList(); 
      return result;
    }
     throw Exception("eoeee");
  }
}
