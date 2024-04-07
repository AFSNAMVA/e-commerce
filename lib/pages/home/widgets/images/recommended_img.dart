import 'package:flutter/material.dart';
import 'package:lafyuu_app/pages/global_widgets/image_text_box.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';

class RecommendedImg extends StatelessWidget {
  const RecommendedImg({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImageTextBox(
        image: 'assets/images/image 51.png', text: AppTexts.recommendedProduct,
         showTimer: false,
         subtitle: AppTexts.subtitle,
        );
  }
}
