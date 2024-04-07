
import 'package:hive_flutter/hive_flutter.dart';

part 'hive_response.g.dart';

@HiveType(typeId: 1)
class HiveResponse {
  @HiveField(0)
  String? token;

  @HiveField(1)
  int? id;

  @HiveField(2)
  String? fullName;

  @HiveField(3)
  String? email;
}
