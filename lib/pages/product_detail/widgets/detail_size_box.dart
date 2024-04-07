import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/detail/detail/detail_cubit.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../../global_widgets/title_text.dart';

class DetailSizeBox extends StatelessWidget {
  const DetailSizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailCubit>();
    return Column(
      children: [
        TitleText(
          text: AppTexts.selectSize,
          color: AppColors.neutralDark,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        SizedBox(
          height: 60,
          child: ListView.builder(
           // final detail=cubit.
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cubit.details!.availableSizes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.neutralGrey),
                          shape: BoxShape.circle),
                      child: TitleText(
                        text: cubit.details!.availableSizes[index].name,
                        fontSize: 16,
                        color: AppColors.neutralDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ));
              }),
        ),
      ],
    );
  }
}
