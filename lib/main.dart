import 'package:flutter/material.dart';
import 'package:ui/views/screens/expanded_screen.dart';
import 'package:ui/views/screens/fifth_class.dart';
import 'package:ui/views/screens/future_delayed.dart';
import 'package:ui/views/screens/lecture_one.dart';
import 'package:ui/views/screens/lecture_three.dart';
import 'package:ui/views/screens/lecture_two.dart';
import 'package:ui/views/screens/navigation.dart';
import 'package:ui/views/screens/screen_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeAnimationDuration: Duration(milliseconds: 300),
      debugShowCheckedModeBanner: false,
      home: FutureDelayed(),
      routes: {
        '/LoginScreen': (context) => ScreenLogin(),
      },
    );
  }
}
