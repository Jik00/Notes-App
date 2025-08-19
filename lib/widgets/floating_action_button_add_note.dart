import 'package:flutter/material.dart';
import 'package:notes_app/helper/random_color_method.dart';
import 'package:notes_app/widgets/add_note_dialog.dart';

class FloatingActionButtonAddNote extends StatelessWidget {
  const FloatingActionButtonAddNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteDialog();
            });
      },
      backgroundColor: getRandomPastelColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Icon(
        Icons.add,
        size: 32,
        color: Colors.black,
      ),
    );
  }
}
