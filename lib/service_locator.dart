import 'package:get_it/get_it.dart';
import 'package:lafyuu_app/data/services/category_service.dart';
import 'package:lafyuu_app/data/services/comments_service.dart';
import 'package:lafyuu_app/data/services/detail_service.dart';
import 'package:lafyuu_app/data/services/flash_sale_products_service.dart';
import 'package:lafyuu_app/data/services/login_service.dart';
import 'package:lafyuu_app/data/services/mega_sale_products_service.dart';
import 'package:lafyuu_app/data/services/recommended_products.dart';
import 'package:lafyuu_app/data/services/register_service.dart';

final GetIt getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  getIt.registerLazySingleton(() => RegisterService());
  getIt.registerLazySingleton(() => LoginService());
  getIt.registerLazySingleton(() => CategoryService());
  getIt.registerLazySingleton(() => FlashSaleProductsService());
  getIt.registerLazySingleton(() => MegaSaleProductsService());
  getIt.registerLazySingleton(() => RecommendedProductsService());
  getIt.registerLazySingleton(() => DetailService());
  getIt.registerLazySingleton(() => CommentsService());
}
