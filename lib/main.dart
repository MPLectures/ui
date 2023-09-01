import 'package:flutter/material.dart';
import 'package:ui/views/screens/lecture_one.dart';
import 'package:ui/views/screens/lecture_three.dart';
import 'package:ui/views/screens/lecture_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LectureTwo(),
    );
  }
}
