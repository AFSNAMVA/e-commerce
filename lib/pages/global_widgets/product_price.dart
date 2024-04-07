import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      maxLines: 2,
      style: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.primeryBlue,
      ),
    );
  }
}
