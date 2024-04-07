import 'package:flutter/material.dart';
import 'package:lafyuu_app/pages/global_widgets/title_text.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, this.onTap, required this.text,  this.isLoading= false});
  final Function()? onTap;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: AppColors.primeryBlue,
          borderRadius:BorderRadius.all(Radius.circular(5)),
        ),
        child:  isLoading ? const CircularProgressIndicator.adaptive() : TitleText(
          text:text,
          color: AppColors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
