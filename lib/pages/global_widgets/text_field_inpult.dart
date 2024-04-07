import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class TextFieldInpult extends StatelessWidget {
   const TextFieldInpult({super.key, this.hintText, this.prefixIcon, this.controller});
  final String? hintText;
  final Widget? prefixIcon;
final TextEditingController? controller;
  @override
  
  Widget build(BuildContext context) {
    
    //final LoginProvider provider = context.read<LoginProvider>();
    return TextFormField(
         controller:controller,
      validator: (v) { 
        if (v == null || v.isEmpty) {
          return 'fill all blank';
        }
       return null;
      },
      style: const TextStyle(
        color: AppColors.neutralGrey,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
