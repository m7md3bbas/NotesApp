part of 'add_note_cuibt_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCuibtInitial extends AddNoteCubitState {}

final class AddNoteCuibtLoading extends AddNoteCubitState {}

final class AddNoteCuibtSuccess extends AddNoteCubitState {}

final class AddNoteCuibtFailure extends AddNoteCubitState {
  String errMessage;
  AddNoteCuibtFailure({required this.errMessage});
}
