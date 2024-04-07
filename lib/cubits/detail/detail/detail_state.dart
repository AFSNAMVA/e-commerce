part of 'detail_cubit.dart';




sealed class DetailState {}


final class DetailInitial extends DetailState {}


final class DetailLoading extends DetailState {}


final class DetailSuccess extends DetailState {}


final class DetailError extends DetailState {}


final class DetailNetworkError extends DetailState {}

