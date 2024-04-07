import 'package:flutter/material.dart';
import 'package:lafyuu_app/data/models/comments_response.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class CommentDate extends StatelessWidget {

  const CommentDate({ super.key, required this.comment });
final CommentsResponse comment;
   @override
   Widget build(BuildContext context) {
       return  Text(comment.date.toString(),selectionColor: AppColors.neutralDark,);
  }
}