import 'package:flutter/material.dart';

class LectureTwo extends StatelessWidget {
  const LectureTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.transparent,
                // borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.grey, width: 4)),
            // child: Center(
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     decoration: BoxDecoration(
            //         color: Colors.transparent,
            //         // borderRadius: BorderRadius.all(Radius.circular(20)),
            //         border: Border.all(color: Colors.grey, width: 4)),
            //   ),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.red,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.cyanAccent,
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     // Text('Hello'),
        //     Container(
        //       height: 100,
        //       width: 40,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 150,
        //       width: 40,
        //       color: Colors.teal,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 40,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 250,
        //       width: 40,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 40,
        //       color: Colors.brown,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
// Single Child & Multi Child Widgets
// Row & Column
