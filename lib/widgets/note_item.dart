import 'package:flutter/material.dart';
import 'package:notes_app/helper/random_color_method.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, const EditNotesView().id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: getRandomPastelColor(),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  note.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                note.subtitle,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 20),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 32,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
