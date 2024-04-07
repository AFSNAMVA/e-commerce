import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lafyuu_app/data/models/hive_response.dart';
import 'package:lafyuu_app/my_app.dart';
import 'package:lafyuu_app/service_locator.dart';
import 'package:lafyuu_app/utils/constants/box_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
   await Hive.initFlutter();
  await Hive.openBox<HiveResponse>(BoxKeys.hiveBox);
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}
