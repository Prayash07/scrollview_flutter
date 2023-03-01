import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.only(
        bottom: 5,
        left: 16,
        right: 16,
      ),
    );
  }
}
