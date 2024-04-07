import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/register/register_cubit.dart';
import 'package:lafyuu_app/pages/global_widgets/text_field_inpult.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';

class FullNameInpult extends StatelessWidget {
  const FullNameInpult({super.key});

  @override
  Widget build(BuildContext context) {
        final cubit = context.read<RegisterCubit>();

    return  TextFieldInpult(
      controller:cubit.fullNameController ,
      hintText: AppTexts.fullName,
      prefixIcon: const Icon(Icons.person_outline),
    );
  }
}
