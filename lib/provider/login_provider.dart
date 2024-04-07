import 'dart:developer';

import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
    final  loginFromKey = GlobalKey<FormState>();

  // String get email => emailController.text;
  // String get password => passwordController.text;

  void loginSignIn(){
     if (loginFromKey.currentState!.validate()) {
                  log('username: ${emailController.text}');
                  log('username: ${passwordController.text}');
                }
  }
  
  
}
