import 'package:flutter/material.dart';

class AuthListView extends StatelessWidget {

  const AuthListView({ super.key, required this.children, required this.loginFromKey });
final List<Widget> children;
final GlobalKey<FormState> loginFromKey;
   @override
   Widget build(BuildContext context) {
       return Center(
          child: Padding(
        padding: const EdgeInsets.all(32),
        child: Form(
          key:loginFromKey,
          child:  SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:children
            ),
          ),
        ),
      ));
  }
}