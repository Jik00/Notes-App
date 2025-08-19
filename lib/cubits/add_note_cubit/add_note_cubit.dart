import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNoteInitial());

  // void addNote(String title, String description) {
  //   // Logic to add a note
  //   emit(AddNoteState.success());
  // }

  // void reset() {
  //   emit(AddNoteState.initial());
  //}
}