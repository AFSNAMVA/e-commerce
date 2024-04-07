import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/cubits/register/register_cubit.dart';
import 'package:lafyuu_app/pages/register/register_page.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.neutralLight)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.neutralLight)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primeryBlue)),
            )),
            home: BlocProvider(
              create: (context) => RegisterCubit()..checkAndRegister(),
              child: const RegisterPage(),
            ),
          );
        });
  }
}
