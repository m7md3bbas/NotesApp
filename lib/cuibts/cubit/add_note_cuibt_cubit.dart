import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_cuibt_state.dart';

class AddNoteCuibtCubit extends Cubit<AddNoteCubitState> {
  AddNoteCuibtCubit() : super(AddNoteCuibtInitial());
}
