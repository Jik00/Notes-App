import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        // get notesList
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 24),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: NoteItem(),
            );
          },
        );
      },
    );
  }
}
