import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_notes_cubit/read_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

// read from hive // u have 3 stages [ ui -> state -> hive ]
class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  List<NoteModel>? notes;
  void readNotes() {
    // why there is no loading state? cuz there's no future to await for
    try {
      final notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();
      emit(ReadNotesSuccess(notes));
    } catch (e) {
      emit(ReadNotesFailure(e.toString()));
    }
  }
}
