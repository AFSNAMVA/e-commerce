import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lafyuu_app/data/models/detail_response.dart';

import 'package:lafyuu_app/data/services/detail_service.dart';

import 'package:lafyuu_app/service_locator.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  final PageController pageController = PageController();

  DetailCubit() : super(DetailInitial());

  final DetailService _detailService = getIt.get<DetailService>();

  DetailResponse? details;

  Future<void> getDetail(int id) async {
    try {
      emit(DetailLoading());

      final fetchedDetail = await _detailService.getDetail(id);

      details = fetchedDetail;

      emit(DetailSuccess());
    } catch (_) {
      emit(DetailError());
    }
  }

  @override
  Future<void> close() {
    pageController.dispose(); // Controller'ı temizle
    return super.close();
  }
}
