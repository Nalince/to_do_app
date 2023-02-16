import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To do app",
      home:  Home(),
    );
  }
}