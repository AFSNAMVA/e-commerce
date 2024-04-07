import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cubits/detail/detail/detail_cubit.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../../global_widgets/title_text.dart';

class DetailColorBox extends StatelessWidget {
  const DetailColorBox({super.key});

  @override
  Widget build(BuildContext context) {
   final cubit = context.read<DetailCubit>();
    return Column(
      children: [
        TitleText(
          text: AppTexts.selectColor,
          color: AppColors.neutralDark,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        SizedBox(
          height: 60,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cubit.details!.availableColors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
               // final detail = cubit.details![index];
                return Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(alignment: Alignment.center,
                      height: 40.r,
                      width: 50.r,
                      decoration:  BoxDecoration(border: Border.all(color:AppColors.neutralGrey ),
                          shape: BoxShape.circle),
                          child: TitleText(text: cubit.details!.availableColors[index].name,color: AppColors.neutralDark,fontWeight: FontWeight.bold,),
                    ));
              }),
        ),
      ],
    );
  }
}
