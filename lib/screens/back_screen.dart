import 'package:flutter/material.dart';
import 'package:ui_tutorial/screens/course_learning_screen.dart';

class BackScreen extends StatelessWidget {
  const BackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return CourseLearningScreen();
                },
              ),
            );
          },
          child: Text("hi back screen"),
        ),
      ),
    );
  }
}
