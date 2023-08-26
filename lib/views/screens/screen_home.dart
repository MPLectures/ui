import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      // body: Center(
      //   child: Container(
      //     height: 150,
      //     width: 300,
      //     color: Color(0xffba68c8),
      //     child: Center(
      //       child: Text(
      //         'Wow',
      //         style: TextStyle(fontFamily: 'TiltPrism'),
      //       ),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Container(
            height: 600,
            width: 500,
            color: Colors.white,
           child:
          Image.asset(
            // height: 100,
            // width: 300,
            fit: BoxFit.fill,
            'assets/images/pexels-abdel-achkouk-16361788.jpg',
          ),
        ),
      ),
    );
  }
}

