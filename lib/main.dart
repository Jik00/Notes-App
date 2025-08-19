import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/view/edit_notes_view.dart';
import 'package:notes_app/view/notes_view.dart';
import 'package:notes_app/models/note_model.dart';

void main() async {

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      routes: {
        NotesView().id: (context) => const NotesView(),
        EditNotesView().id: (context) => const EditNotesView(),
      },
      initialRoute: const NotesView().id,
    );
  }
}
