import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/home/product/product_cubit.dart';
import 'package:lafyuu_app/pages/home/widgets/product_box/product_box.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../texts/text_space_home.dart';

class FlashSaleList extends StatelessWidget {
  const FlashSaleList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return Column(
      children: [
        const TextSpaceHome(
          textLeft: AppTexts.flashSale,
          colorLeft: AppColors.neutralDark,
          textRight: AppTexts.seeMore,
          colorRight: AppColors.primeryBlue,
        ),
        SizedBox(
          height: 336,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cubit.flasSale!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final product = cubit.flasSale![index];
                return ProductBox(
                  product: product,
                );
              }),
        ),
      ],
    );
  }
}
