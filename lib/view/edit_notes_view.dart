import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  final String id = 'editNotesViewId';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const CustomAppbar(title: 'Edit Note', icon: Icons.done),
            const SizedBox(height: 32),
            InputTextField(hint: 'title', onChanged: (value) {}),
            const SizedBox(height: 16),
            InputTextField(
                hint: 'description',
                onChanged: (value) {},
                textInput: TextInputType.multiline,
                maxLines: 5),
          ],
        ),
      ),
    );
  }
}
