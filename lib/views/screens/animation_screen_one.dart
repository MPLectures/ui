import 'package:flutter/material.dart';
import 'package:ui/views/screens/animation_screen_two.dart';

class AnimationScreenOne extends StatelessWidget {
  const AnimationScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.yellow,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AnimationScreenTwo()));
          },
          child: Hero(
            tag: 'abc',
            child: Container(
              margin: EdgeInsets.only(bottom: 250),
              padding: EdgeInsets.all(60),
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: Text("Second Screen"),
            ),
          ),
        ),
      ),
    );
  }
}
