
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProductRatingBar extends StatelessWidget {
  const ProductRatingBar({super.key,required  this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {  
    
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemSize: 20.sp,
      itemCount: 5,
      //itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        (rating);
      },
    );
  }
}
