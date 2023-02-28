import 'package:flutter/material.dart';
import 'package:flutter_scrollview/features/customScrollView/custom_scroll_view.dart';
import 'package:flutter_scrollview/features/nestedScrollView/nested_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomScrollViewExample(),
    );
  }
}
