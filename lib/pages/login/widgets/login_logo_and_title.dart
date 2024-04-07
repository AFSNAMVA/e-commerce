import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';

class LoginLogoAndTitle extends StatelessWidget {
  const LoginLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/White.png',
          height: 72,
          width: 72,
        ),
        16.verticalSpace,
        Text(
          AppTexts.welcomeToLafyuu,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.neutralDark,
          ),
        ),
        8.verticalSpace,
        const Text(
          AppTexts.sigInToContinue,
          style: TextStyle(color: AppColors.neutralGrey),
        ),
      ],
    );
  }
}
