import 'package:notes_app/models/note_model.dart';

abstract class ReadNotesState {}

class ReadNotesInitial extends ReadNotesState {}

class ReadNotesSuccess extends ReadNotesState {

  final List <NoteModel>? notesList;
  ReadNotesSuccess(this.notesList);
}

class ReadNotesFailure extends ReadNotesState {
  final String errorMessage;

  ReadNotesFailure(this.errorMessage);
}