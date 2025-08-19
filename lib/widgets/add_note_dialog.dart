import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/text_field.dart';

class AddNoteDialog extends StatelessWidget {
  const AddNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            InputTextField(hint: 'title', onChanged: (value) {}),
            const SizedBox(height: 16),
            InputTextField(
                hint: 'description',
                onChanged: (value) {},
                textInput: TextInputType.multiline,
                maxLines: 5),
            const SizedBox(height: 16),
            CustomButton(
                hint: 'Save Note',
                onTap: () {
                  Navigator.pop(context);
                }),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
