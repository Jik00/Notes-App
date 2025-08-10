import 'package:flutter/material.dart';

class CustomSearchIcon extends StatefulWidget {
  const CustomSearchIcon({super.key});

  @override
  State<CustomSearchIcon> createState() => _CustomSearchIconState();
}

class _CustomSearchIconState extends State<CustomSearchIcon> {
  double containerWidth = 50; // Keep inside state

  bool expanded = false;
  Color containerBorderColor = Colors.transparent;

  void _toggleContainer() {
    setState(() {
      expanded = !expanded;
      containerWidth = expanded ? 200 : 50; // More obvious size change
      containerBorderColor =
          expanded ? Colors.white.withOpacity(0.1) : Colors.transparent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: containerWidth,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: containerBorderColor,
          )),
      child: IconButton(
        onPressed: () {
          _toggleContainer();
        },
        icon: const Icon(
          Icons.search,
          size: 32,
        ),
      ),
    );
  }
}
