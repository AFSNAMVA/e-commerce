import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,
        maxLines: 2,
        style: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.neutralDark,
        ).copyWith(
          overflow: TextOverflow.ellipsis,
        ));
  }
}
