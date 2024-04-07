import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/login/login_cubit.dart';
import 'package:lafyuu_app/cubits/register/register_cubit.dart';
import 'package:lafyuu_app/pages/login/login_page.dart';
import 'package:lafyuu_app/pages/global_widgets/global_button.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';
import 'package:lafyuu_app/utils/helpers/navigate.dart';


class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          Navigate.to(
              context,
               BlocProvider(
                create: (context) => LoginCubit(),
                child: const LoginPage(),
              ));
        }
        if (state is RegisterError) {
        }
      },
      builder: (context, state) {
        return GlobalButton(
          isLoading: state is RegisterLoading,
          onTap: () {
            cubit.checkAndRegister();
          },
          text: AppTexts.signUp,
        );
      },
    );
  }
}
