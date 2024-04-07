import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuu_app/pages/global_widgets/timer_box.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';

class ImageTextBox extends StatelessWidget {
  const ImageTextBox({
    super.key,
    required this.text,
    required this.image,
    required this.showTimer,
    this.subtitle,
  });
  final String text;
  final String image;
  final String? subtitle;
  final bool showTimer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,
                style: GoogleFonts.poppins(
                    color: AppColors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700)),
            AppSizedBox.h16,
            if (showTimer == true) const Timerbox(),
            if (showTimer == false)
              
                Text(
                  subtitle!,
                  style: GoogleFonts.poppins(
                    color: AppColors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              
          ],
        ),
      ),
    );
  }
}
