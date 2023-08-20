import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Constant.dart';
import 'package:notesapp/NoteModel/NoteModel.dart';

part 'add_note_cuibt_state.dart';

class AddNoteCuibtCubit extends Cubit<AddNoteCubitState> {
  AddNoteCuibtCubit() : super(AddNoteCuibtInitial());
  addNotes(NoteModel note) {
    emit(AddNoteCuibtLoading());
    try {
      var noteBox = Hive.box(KHiveBox);
      noteBox.add(note);
      emit(AddNoteCuibtSuccess());
    } catch (e) {
      emit(AddNoteCuibtFailure(errMessage: e.toString()));
    }
  }
}
