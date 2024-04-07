import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/controllers/hive_controller.dart';
import 'package:lafyuu_app/cubits/home/product/product_cubit.dart';
import 'package:lafyuu_app/cubits/login/login_cubit.dart';
import 'package:lafyuu_app/data/models/hive_response.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';
import 'package:lafyuu_app/utils/helpers/navigate.dart';
import '../../home/home_page.dart';
import '../../global_widgets/global_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = context.read<LoginCubit>();
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          HiveResponse response = HiveResponse();
          HiveController.saveHiveData(response);
          Navigate.to(
              context,
              BlocProvider(
                create: (context) => ProductCubit()..getProducts(),
                child: const HomePage(),
              ));
        }
      },
      builder: (context, state) {
        return GlobalButton(
          isLoading: state is LoginLoading,
          onTap: () {
            cubit.checkAndLogin();
          },
          text: AppTexts.signIn,
        );
      },
    );
  }
}
