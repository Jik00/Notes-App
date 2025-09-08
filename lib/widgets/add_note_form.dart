import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, description;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          InputTextField(
              hint: 'title',
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(height: 16),
          InputTextField(
              hint: 'description',
              onSaved: (value) {
                description = value;
              },
              textInput: TextInputType.multiline,
              maxLines: 5),
          const SizedBox(height: 16),
          CustomButton(
              hint: 'Save Note',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  // our logic to add the new note
                  BlocProvider.of<AddNoteCubit>(context)
                      .addNote(title!, description!);
                      
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              }),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
