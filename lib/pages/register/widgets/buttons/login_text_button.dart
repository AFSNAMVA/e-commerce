import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/login/login_cubit.dart';
import 'package:lafyuu_app/pages/login/login_page.dart';
import 'package:lafyuu_app/pages/global_widgets/title_text.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';
import 'package:lafyuu_app/utils/helpers/navigate.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         TitleText(
          text: AppTexts.haveAAccount,
        ),
        TextButton(
            onPressed: () {
              Navigate.to(
                context,
                 BlocProvider(
                  create: (context) => LoginCubit(),
                  child: const LoginPage(),
                ),
              );
            },
            child:  TitleText(
              text: AppTexts.signIn,
              color: AppColors.primeryBlue,
            )),
      ],
    );
  }
}
