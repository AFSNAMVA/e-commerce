import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../../global_widgets/title_text.dart';

class DetailSpecificationBox extends StatelessWidget {
  const DetailSpecificationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(
          text: AppTexts.specification,
          color: AppColors.neutralDark,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        8.verticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(text: 'Shown:'),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TitleText(text: 'data'),
                TitleText(text: 'data'),
                TitleText(text: 'data'),
              ],
            )
          ],
        ),
        8.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [TitleText(text: 'Style:'), TitleText(text: 'CD01384783')],
        ),
        8.verticalSpace,
        TitleText(
            text:
                'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.'),
        8.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(
              text: AppTexts.reviewProduct,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColors.neutralDark,
            ),
            TitleText(
              text: AppTexts.seeMore,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColors.primeryBlue,
            ),
          ],
        ),
      ],
    );
  }
}
