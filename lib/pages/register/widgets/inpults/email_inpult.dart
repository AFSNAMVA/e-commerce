import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/pages/global_widgets/text_field_inpult.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';

import '../../../../cubits/register/register_cubit.dart';


class EmailInpult extends StatelessWidget {
  const EmailInpult({super.key});

  @override
  Widget build(BuildContext context) {   
     final cubit = context.read<RegisterCubit>();

    return  TextFieldInpult(
      controller: cubit.emailController,
        hintText: AppTexts.yourEmail, prefixIcon: const Icon(Icons.email_outlined));
  }
}
