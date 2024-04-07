import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/pages/global_widgets/product_rating_bar.dart';

import '../../../data/models/comments_response.dart';

class CommentHeader extends StatelessWidget {

  const CommentHeader({ super.key, required this.comment });
  final CommentsResponse comment;
   @override
   Widget build(BuildContext context) {
       return Row(
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage("https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png"),
            ),
            24.horizontalSpace,
            Column(
              children: [
                 Text(comment.user.fullName),
                2.verticalSpace,
                 ProductRatingBar(rating: comment.rating.toDouble()),
              ],
            )
          ],
        );
  }
}