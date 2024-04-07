import 'package:hive_flutter/hive_flutter.dart';
import 'package:lafyuu_app/data/models/hive_response.dart';
import 'package:lafyuu_app/utils/constants/box_keys.dart';

class HiveController {
  static final box = Hive.box<HiveResponse>(BoxKeys.hiveBox);

  static void saveHiveData(HiveResponse response) async {
    await box.put(BoxKeys.hiveResponse, response);
  }

  static HiveResponse? get localHiveResponse {
    final HiveResponse? data = box.get(BoxKeys.hiveResponse);
    return data;
  }

  static void clearHiveResponse() {
    box.delete(BoxKeys.hiveResponse);
  }
}
