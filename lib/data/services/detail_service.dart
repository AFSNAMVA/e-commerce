import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu_app/data/models/detail_response.dart';
import 'package:lafyuu_app/utils/constants/endpoint.dart';

class DetailService {
  Future<DetailResponse> getDetail(int id) async {
    final Uri url = Uri.parse("${Endpoint.detail}/$id");

    final Response response = await get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final DetailResponse productDetail = DetailResponse.fromJson(data);
      return productDetail;
    }
    throw Exception("Failed to load details");
  }
}
