import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/pages/login/widgets/connect_button.dart';

import '../../../utils/constants/app_texts.dart';

class LoginConnectButton extends StatelessWidget {
  const LoginConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ConnectButton(
            text: AppTexts.loginWithGoogle, image: 'assets/images/Google.png'),
        16.verticalSpace,
        const ConnectButton(
            text: AppTexts.loginWithFacebook, image: 'assets/images/Google.png')
      ],
    );
  }
}
