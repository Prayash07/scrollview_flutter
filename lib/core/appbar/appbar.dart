import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Custom Scroll View Example",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff161B22),
      elevation: 0.5,
    );
  }
}
