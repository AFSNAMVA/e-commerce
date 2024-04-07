import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class GlobalInpult extends StatelessWidget {
  const GlobalInpult({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField( 
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
        color: AppColors.neutralGrey,
      ))
      ),
    );
  }
}
