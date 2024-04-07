import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/home/product/product_cubit.dart';
import 'package:lafyuu_app/pages/global_widgets/title_text.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';

import '../../../../utils/constants/app_texts.dart';
import '../texts/text_space_home.dart';

class CatagoryList extends StatelessWidget {
  const CatagoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return Column(
      children: [const TextSpaceHome(
      textLeft: AppTexts.category,
      colorLeft: AppColors.neutralDark,
      textRight: AppTexts.moreCategory,
      colorRight: AppColors.primeryBlue,
    ),
        SizedBox(
          height: 110,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final product = cubit.categories![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: AppColors.neutralLight)),
                        child: Image.asset('assets/images/shirt.png'),
                      ),
                      AppSizedBox.h8,
                      TitleText(
                        text: product.name,
                        fontSize: 10,
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
