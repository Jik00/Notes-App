import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/cubits/read_notes_cubit/read_notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notesList = BlocProvider.of<ReadNotesCubit>(context).notes?? [];
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 24),
          itemCount: notesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: NoteItem(
                note: notesList[index],
              ),
            );
          },
        );
      },
    );
  }
}
