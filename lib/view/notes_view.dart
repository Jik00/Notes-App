import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/floating_action_button_add_note.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  final String id = 'notesViewId';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
    );
  }
}

