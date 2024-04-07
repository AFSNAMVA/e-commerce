import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/register/register_cubit.dart';
import 'package:lafyuu_app/pages/register/register_page.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:flutter/services.dart';
import 'package:lafyuu_app/utils/helpers/navigate.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigate.to(
          context,
           BlocProvider(
            create: (context) => RegisterCubit(),
            child: const RegisterPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.primeryBlue));
    return Scaffold(
      backgroundColor: AppColors.primeryBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/White1.png')], 
        ),
      ),
    );
  }
}
