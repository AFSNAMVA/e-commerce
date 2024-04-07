import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../../global_widgets/title_text.dart';

class LoginDivider extends StatelessWidget {

  const LoginDivider({ super.key });

   @override
   Widget build(BuildContext context) {
       return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const VerticalDivider(
                    thickness: 2, // Çizgi kalınlığı
                    color: AppColors.neutralLight, // Çizgi rengi
                    indent: 5, // Sol taraftaki boşluk
                    endIndent: 5, // Sağ taraftaki boşluk
                  ),
                  TitleText(
                    text: AppTexts.or,
                  ),
                  const Divider(
                    thickness: 2, // Çizgi kalınlığı
                    color: AppColors.neutralLight, // Çizgi rengi
                    indent: 5, // Sol taraftaki boşluk
                    endIndent: 5, // Sağ taraftaki boşluk
                  ),
                ],
              );
  }
}