import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/register/register_cubit.dart';
import 'package:lafyuu_app/pages/register/widgets/buttons/login_text_button.dart';
import 'package:lafyuu_app/pages/register/widgets/buttons/register_button.dart';
import 'package:lafyuu_app/pages/register/widgets/inpults/confirm_password_inpult.dart';
import 'package:lafyuu_app/pages/register/widgets/inpults/email_inpult.dart';
import 'package:lafyuu_app/pages/register/widgets/inpults/full_name_inpult.dart';
import 'package:lafyuu_app/pages/register/widgets/inpults/password_inpult.dart';
import 'package:lafyuu_app/pages/register/widgets/texts/register_logo_and_title.dart';
import 'package:lafyuu_app/pages/register/widgets/auth_list_view.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
    )); /* alt shift f and alt shist a */
    final cubit = context.read<RegisterCubit>();
    return Scaffold(
      body: AuthListView(
        loginFromKey: cubit.formKey,
        children: const [
          RegisterLogoAndTitle(),
          AppSizedBox.h8,
          AppSizedBox.h16,
          FullNameInpult(),
          AppSizedBox.h16,
          EmailInpult(),
          AppSizedBox.h16,
          PasswordInpult(),
          AppSizedBox.h16,
          ConfirmPasswordInpult(),
          AppSizedBox.h16,
          RegisterButton(),
          AppSizedBox.h16,
          LoginTextButton(),
        ],
      ),
    );
  }
}
