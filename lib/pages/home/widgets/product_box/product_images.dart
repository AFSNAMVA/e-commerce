import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 133,
      color: AppColors.neutralLight,
      child:Image.network(
        img,
        height: 100,
        width: 100,
      ),
    );
  }
}
