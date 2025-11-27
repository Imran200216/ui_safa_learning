import 'package:flutter/material.dart';
import 'package:ui_tutorial/screens/course_learning_screen.dart';
import 'package:ui_tutorial/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: CourseLearningScreen(

      ),
    );
  }
}
