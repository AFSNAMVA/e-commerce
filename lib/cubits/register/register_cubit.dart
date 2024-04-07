import 'dart:developer';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/data/models/auth_response.dart';
import 'package:lafyuu_app/data/services/register_service.dart';
import 'package:lafyuu_app/service_locator.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  late final fullNameController = TextEditingController();
  late final passwordController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordAgainContoller = TextEditingController();
  late final formKey = GlobalKey<FormState>();
  final RegisterService _registerService = getIt.get<RegisterService>();
  void _register() async {
    try {
      emit(RegisterLoading());
      final AuthResponse? response = await _registerService.register(
        fullName: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      if (response is AuthResponse) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterError());
      }
    } on SocketException catch (_) {
      emit(RegisterNetworkError());
    } catch (_) {
      emit(RegisterError());
    }
  }

void checkAndRegister(){
  if ((formKey.currentState?.validate() ?? false) && passwordController.text==passwordAgainContoller.text ) {
     _register();
  }else{log('error pccurred');}
}

  @override
  Future<void> close() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordAgainContoller.dispose();
    return super.close();
  }
}

