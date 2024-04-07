import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/data/models/comments_response.dart';
import 'package:lafyuu_app/pages/comments/widgets/comment_list_item.dart';

import '../../cubits/comments/comments_cubit.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommentsCubit>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('5 review'),
        ),
        body: BlocBuilder<CommentsCubit, CommentsState>(
          builder: (context, state) {
            if (state is CommentsLoading || state is CommentsInitial) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (state is CommentsSuccess) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.separated(
                  itemCount: cubit.comments!.length,
                  separatorBuilder: (context, index) => 16.verticalSpace,
                  itemBuilder: (context, index) {
                    CommentsResponse comment = cubit.comments![index];
                    return CommentListItem(
                      comment: comment,
                    );
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ));
  }
}
