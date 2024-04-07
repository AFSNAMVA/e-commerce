import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton(
      {super.key, this.onTap, required this.text, required this.image});
  final Function()? onTap;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: AppColors.neutralGrey)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(image),
                AppSizedBox.w16,
                Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.neutralGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
