import 'package:flutter/material.dart';
import 'package:ui/views/screens/animation_screen_one.dart';
import 'package:ui/views/screens/navigation.dart';

class AnimationScreenTwo extends StatelessWidget {
  const AnimationScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.teal,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AnimationScreenOne()));
          },
          child: Hero(
            tag: 'abc',
            child: Container(
              margin: EdgeInsets.only(top: 250),
              padding: EdgeInsets.all(90),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text("Animation Screen"),
            ),
          ),
        ),
      ),
    );
  }
}
