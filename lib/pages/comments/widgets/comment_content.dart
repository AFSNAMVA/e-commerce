import 'package:flutter/material.dart';

import '../../../data/models/comments_response.dart';

class CommentContent extends StatelessWidget {
  final CommentsResponse comment;
  const CommentContent({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Text(comment.comment);
  }
}
