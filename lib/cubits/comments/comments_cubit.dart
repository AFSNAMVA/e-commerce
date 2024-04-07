import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/data/models/comments_response.dart';
import 'package:lafyuu_app/data/services/comments_service.dart';
import 'package:lafyuu_app/service_locator.dart';

part 'comments_state.dart';

class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit() : super(CommentsInitial());

  final CommentsService _commentsService = getIt.get<CommentsService>();
  List<CommentsResponse>? comments;
  void getCommets(int id) async {
    try {

      emit(CommentsLoading());
      comments = await _commentsService.getComment(id);
      emit(CommentsSuccess());
    } catch (e) {
      emit(CommentsError());
    }
  }
}
