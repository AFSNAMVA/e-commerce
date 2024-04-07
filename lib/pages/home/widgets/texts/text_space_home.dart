import 'package:flutter/material.dart';

class TextSpaceHome extends StatelessWidget {
  final Color? colorLeft;
  final Color? colorRight;
  final String textLeft;
  final String textRight;
  const TextSpaceHome({super.key, this.colorLeft, this.colorRight, required this.textLeft, required this.textRight});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         textLeft,
          style: TextStyle(
              color:colorLeft,
               fontWeight: FontWeight.bold),
        ),
        Text(
          textRight,
          style: TextStyle(
              color:colorRight,
               fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
