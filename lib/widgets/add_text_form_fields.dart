import 'package:flutter/material.dart';

class addTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData icon;

  const addTextFormField({super.key,
    required this.label,
    required this.hintText,
    required this.icon, required InputDecoration decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(label),
        hintText: hintText,
        suffixIcon: Icon(icon),
      ),
    );
  }
}
