import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/login/login_cubit.dart';

import '../../../utils/constants/app_texts.dart';
import '../../global_widgets/text_field_inpult.dart';

class LoginPasswordInpult extends StatelessWidget {
  const LoginPasswordInpult({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return TextFieldInpult(
        controller: cubit.passwordController,
        hintText: AppTexts.password,
        prefixIcon: const Icon(Icons.lock_outlined));
  }
}
