import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key,});

  final String id = 'editNotesViewId'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              CustomAppbar(title: 'Edit Note', icon: Icons.done, onPressed: (){
                
                (ModalRoute.of(context)?.settings.arguments as NoteModel).save();
                BlocProvider.of<ReadNotesCubit>(context).readNotes();
                
              }),
              const SizedBox(height: 32),
              InputTextField(
                  hint: 'title',
                  onChanged: (value) {
                    (ModalRoute.of(context)?.settings.arguments as NoteModel).copyWith(title: value);
                  }),
              const SizedBox(height: 16),
              InputTextField(
                  hint: 'description',
                  onChanged: (value) {
                    (ModalRoute.of(context)?.settings.arguments as NoteModel).copyWith(subtitle: value);
                  },
                  textInput: TextInputType.multiline,
                  maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
