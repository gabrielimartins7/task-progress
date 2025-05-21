import 'package:exemplo/data/task_inherited.dart';
import 'package:exemplo/screens/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:exemplo/screens/initial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: TaskInherited(child: const InitialScreen()),
    );
  }
}
