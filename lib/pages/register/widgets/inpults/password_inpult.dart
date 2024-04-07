import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/pages/global_widgets/text_field_inpult.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';

import '../../../../cubits/register/register_cubit.dart';

class PasswordInpult extends StatelessWidget {
  const PasswordInpult({super.key});

  @override
  Widget build(BuildContext context) {
        final cubit = context.read<RegisterCubit>();

    return  TextFieldInpult(
      controller: cubit.passwordController,
        hintText: AppTexts.password, prefixIcon: const Icon(Icons.lock_outlined));
  }
}
