import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

// ignore: must_be_immutable
class TitleText extends StatelessWidget {
   TitleText({super.key, required this.text, this.color, this.fontSize,this.fontWeight});
  final String text;
  final Color? color;
  final double? fontSize;
  FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          
          color: color ?? AppColors.neutralGrey,
          fontSize:fontSize?? 12,
          fontWeight: fontWeight ?? FontWeight.normal,
        ));
  }
}
