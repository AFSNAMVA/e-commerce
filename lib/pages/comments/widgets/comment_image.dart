import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/comments_response.dart';

class CommentImages extends StatelessWidget {
  const CommentImages({super.key, required this.comment});
  final CommentsResponse comment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 82.r,
      child: ListView.separated(
        scrollDirection : Axis.horizontal,
        itemCount: comment.commentImages.length,
        separatorBuilder: (context, index) => 16.horizontalSpace,
        clipBehavior: Clip.antiAlias,
        itemBuilder: (context, index) {
          return Container(
            width: 82.r,
            height: 82.r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image:  DecorationImage(
                  image: NetworkImage(comment.commentImages[index].image),
                )),
          );
        },
      ),
    );
  }
}
