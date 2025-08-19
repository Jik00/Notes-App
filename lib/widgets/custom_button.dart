import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.hint, this.onTap});

  final String hint;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: kThirdColor,
        minimumSize: const Size(402, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        hint,
        style: const TextStyle(
          fontSize: 26,
          color: Colors.black,
        ),
      ),
    );
  }
}
