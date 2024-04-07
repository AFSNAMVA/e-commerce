import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu_app/data/models/comments_response.dart';
import 'package:lafyuu_app/utils/constants/endpoint.dart';

class CommentsService {
  Future<List<CommentsResponse>> getComment(int id) async {
    final Uri url = Uri.parse('${Endpoint.comment}$id');
    final Response response = await get(url);
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result = data.map((e) => CommentsResponse.fromJson(e)).toList();
      return result;
    }
    throw Exception("eoeee");
  }
}
