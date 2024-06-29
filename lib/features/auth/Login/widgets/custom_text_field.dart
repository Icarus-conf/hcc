import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.text,
    this.obsecureText,
  });

  final IconData? icon;
  final String text;
  final bool? obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText ?? false,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: Icon(
          icon,
        ),
        prefixIconColor: Colors.lightBlue,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            width: 0.6,
          ),
        ),
      ),
    );
  }
}
