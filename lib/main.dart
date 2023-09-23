import 'package:flutter/material.dart';
import 'package:ui/views/screens/text_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeAnimationDuration: Duration(milliseconds: 300),
      debugShowCheckedModeBanner: false,
      home: TextScreen(),
      // home: FutureDelayed(),
      // routes: {
      //   '/LoginScreen': (context) => ScreenLogin(),
      // },
    );
  }
}
