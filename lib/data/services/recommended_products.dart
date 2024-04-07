import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu_app/data/models/products_response.dart';
import 'package:lafyuu_app/utils/constants/endpoint.dart';

class RecommendedProductsService {
  Future<List<ProductsResponse>> getRecommended() async {
    final Uri url = Uri.parse(Endpoint.recomended);
    final Response response = await get(url);
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result = data.map((e) => ProductsResponse.fromJson(e)).toList();
      return result;
    }
    throw Exception();
  }
}
