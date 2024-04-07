import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lafyuu_app/data/models/products_response.dart';

import 'package:lafyuu_app/data/services/category_service.dart';

import 'package:lafyuu_app/data/services/flash_sale_products_service.dart';

import 'package:lafyuu_app/data/services/mega_sale_products_service.dart';

import 'package:lafyuu_app/data/services/recommended_products.dart';

import 'package:lafyuu_app/service_locator.dart';

import '../../../data/models/category_response.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  final CategoryService _categoryService = getIt.get<CategoryService>();

  final FlashSaleProductsService _flashService =
      getIt.get<FlashSaleProductsService>();

  final MegaSaleProductsService _megaService =
      getIt.get<MegaSaleProductsService>();

  final RecommendedProductsService _recommendedService =
      getIt.get<RecommendedProductsService>();

  List<CaregoryResoponse>? categories;

  List<ProductsResponse>? flasSale;

  List<ProductsResponse>? megaSale;

  List<ProductsResponse>? recommendedSale;

  Future<void> getProducts() async {
    try {
      emit(ProductLoading());

      final fetchedcategories = await _categoryService.getCategory();

      final fetchedflasSale = await _flashService.getFlash();

      final fetchedMegaSale = await _megaService.getMega();

      final fetchedRecommendedSale = await _recommendedService.getRecommended();

      categories = fetchedcategories;

      flasSale = fetchedflasSale;

      megaSale = fetchedMegaSale;

      recommendedSale = fetchedRecommendedSale;

      emit(ProductSuccess());
    } catch (_) {
      emit(ProductError());
    }
  }
}
