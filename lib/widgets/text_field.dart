import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class InputTextField extends StatelessWidget {
  InputTextField(
      {super.key,
      required this.hint,
      this.onSaved,
      this.onChanged,
      this.textInput,
      this.maxLines = 1});

  final String hint;
  final TextInputType? textInput;
  final int maxLines;
  void Function(String)? onChanged;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInput,
      maxLines: maxLines,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter $hint';
        }
        return null;
      },
      cursorColor: kThirdColor,
      style: const TextStyle(color: kSecondaryColor, fontSize: 22),
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kSecondaryColor, fontSize: 18),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          fillColor: kPrimaryColor,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kThirdColor, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kSecondaryColor, width: 2),
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
