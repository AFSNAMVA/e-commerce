import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';

class RegisterLogoAndTitle extends StatelessWidget {
  const RegisterLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/White.png',
          height: 72,
          width: 72,
        ),
        AppSizedBox.h16,
        Text(
          AppTexts.letsGetstarted,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.neutralDark,
          ),
        ),
        const Text(
              AppTexts.sigInToContinue,
              style: TextStyle(color: AppColors.neutralGrey),
            ),
      ],
    );
  }
}
