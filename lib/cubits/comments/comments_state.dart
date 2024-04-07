part of 'comments_cubit.dart';

sealed class CommentsState {}

final class CommentsInitial extends CommentsState {}

final class CommentsLoading extends CommentsState {}

final class CommentsSuccess extends CommentsState {}

final class CommentsError extends CommentsState {}
