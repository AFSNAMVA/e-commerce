import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/pages/login/widgets/bottom_buttons.dart';
import 'package:lafyuu_app/pages/login/widgets/login_button.dart';
import 'package:lafyuu_app/pages/login/widgets/login_connect_button.dart';
import 'package:lafyuu_app/pages/login/widgets/login_divider.dart';
import 'package:lafyuu_app/pages/login/widgets/login_email_inpult.dart';
import 'package:lafyuu_app/pages/login/widgets/login_logo_and_title.dart';
import 'package:lafyuu_app/pages/login/widgets/login_password_inpult.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';

import '../../cubits/login/login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
    ));
    return Scaffold(
      body: Form(
        key: cubit.formKey,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginLogoAndTitle(),
              16.verticalSpace,
              const LoginEmailInpult(),
              16.verticalSpace,
              const LoginPasswordInpult(),
              16.verticalSpace,
             const LoginButton(),
              AppSizedBox.h16,
              const LoginDivider(),
              AppSizedBox.h16,
              const LoginConnectButton(),
              AppSizedBox.h16,
              const BottomButtons(),
            ],
          ),
        )),
      ),
    );
  }
}
