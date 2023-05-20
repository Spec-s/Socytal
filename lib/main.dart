import 'package:flutter/material.dart';
import 'package:socytal/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socytal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        secondaryHeaderColor: Colors.green,
      ),
      home: Home(),
    );
  }
}
