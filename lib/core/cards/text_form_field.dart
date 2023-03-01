import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          fillColor: Colors.grey,
          prefixIconColor: Colors.black,
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: InputBorder.none,
          focusColor: Colors.black,
        ),
      ),
    );
  }
}
