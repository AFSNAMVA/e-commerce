import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lafyuu_app/data/models/auth_response.dart';

import 'package:lafyuu_app/data/services/login_service.dart';

import 'package:lafyuu_app/service_locator.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final LoginService _loginService = getIt.get<LoginService>();
  late final formKey = GlobalKey<FormState>();

  late final TextEditingController emailController = TextEditingController();

  late final TextEditingController passwordController = TextEditingController();

  void _login() async {
    try {
      emit(LoginLoading());

      final AuthResponse? response = await _loginService.login(
        email: emailController.text,
        password: passwordController.text,
      );
      if (response is AuthResponse) {
        emit(LoginSuccess());
      } else {
        emit(LoginError());
      }
    } on SocketException catch (_) {
      emit(LoginNetworkError());
    } catch (_) {
      emit(LoginError());
    }
  }

  void checkAndLogin() {
    if (formKey.currentState?.validate() ?? false) {
      _login();
    } else {
      log('error pccurred');
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
