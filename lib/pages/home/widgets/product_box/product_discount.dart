import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class ProductDiscount extends StatelessWidget {

  const ProductDiscount({ super.key,  this.disCount,  this.disCountPrice });
 final double? disCountPrice;
 final int? disCount;
   @override
   Widget build(BuildContext context) {
       return Row(
              children: [
                 Text(
                  "$disCountPrice",
                  style:  GoogleFonts.poppins(
                      color: AppColors.neutralGrey,
                      decoration: TextDecoration.lineThrough),
                ),
                8.horizontalSpace,
                 Text(
                  "$disCount% Off ",
                  style: GoogleFonts.poppins(
                    color: AppColors.primeryRed,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            );
  }
}