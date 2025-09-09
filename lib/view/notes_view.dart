import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/floating_action_button_add_note.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  final String id = 'notesViewId';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: const Scaffold(
        floatingActionButton: FloatingActionButtonAddNote(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              CustomAppbar(
                title: 'Notes',
              ),
              Expanded(
                child: NotesListview(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
