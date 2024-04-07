import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/register/register_cubit.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../../../utils/helpers/navigate.dart';
import '../../global_widgets/title_text.dart';
import '../../register/register_page.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            child:  TitleText(
              text: AppTexts.forgetPassword,
              color: AppColors.primeryBlue,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TitleText(
              text: AppTexts.dontHaveAAccount,
            ),
            TextButton(
                onPressed: () {
                  Navigate.to(
                    context,
                    BlocProvider(
                      create: (context) => RegisterCubit(),
                      child: const RegisterPage(),
                    ),
                  );
                },
                child:  TitleText(
                  text: AppTexts.register,
                  color: AppColors.primeryBlue,
                )),
          ],
        )
      ],
    );
  }
}
