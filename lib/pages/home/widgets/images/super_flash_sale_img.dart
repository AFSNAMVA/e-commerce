import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/pages/global_widgets/image_text_box.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';

class SuperFlashSaleImg extends StatelessWidget {
  const SuperFlashSaleImg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ImageTextBox(
              image: 'assets/images/shoes.png',
              text: AppTexts.superFlash,
              showTimer: true,
            );
          }),
    );
  }
}
