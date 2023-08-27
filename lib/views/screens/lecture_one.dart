import 'package:flutter/material.dart';

class LectureOne extends StatelessWidget {
  const LectureOne({super.key});

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
          height: 500,
          width: 500,
          color: Colors.white,
          child: Center(
            child: Container(
              height: 400,
              width: 300,
              color: Colors.green,
              child: Center(
                child: Container(
                  height: 300,
                  width: 200,
                  color: Colors.brown,
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 150,
                      child: Center(
                        child: Image.asset(
                          fit: BoxFit.fill,
                          'assets/images/pexels-abdel-achkouk-16361788.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
