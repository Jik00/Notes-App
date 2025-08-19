import 'package:flutter/material.dart';
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
                  // autovalidateMode = AutovalidateMode.disabled;
                  // Here you would typically save the note to your database
                  // For example, using Hive or any other storage solution
                  // After saving, you might want to clear the fields or navigate back

                  Navigator.pop(context);
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
