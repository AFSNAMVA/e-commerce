import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/pages/comments/widgets/comment_content.dart';
import 'package:lafyuu_app/pages/comments/widgets/comment_date.dart';
import 'package:lafyuu_app/pages/comments/widgets/comment_header.dart';
import 'package:lafyuu_app/pages/comments/widgets/comment_image.dart';

import '../../../data/models/comments_response.dart';

class CommentListItem extends StatelessWidget {
  const CommentListItem({super.key,required this.comment});
  final CommentsResponse comment;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
           CommentHeader(comment: comment,),
          24.verticalSpace,
           CommentContent(comment: comment,),
          24.verticalSpace,
          CommentImages(comment: comment,),
            24.verticalSpace,
          CommentDate(comment: comment,),
        ],
      ),
    );
  }
}
