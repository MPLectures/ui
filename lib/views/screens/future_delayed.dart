import 'dart:async';

import 'package:flutter/material.dart';

class FutureDelayed extends StatefulWidget {
  @override
  State<FutureDelayed> createState() => _FutureDelayedState();
}

class _FutureDelayedState extends State<FutureDelayed> {
  Color firstColor = Colors.red;

  Color secondColor = Colors.green;

  Color thirdColor = Colors.yellow;

  Color? temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: firstColor,
              ),
              Container(
                height: 100,
                width: 100,
                color: secondColor,
              ),
              Container(
                height: 100,
                width: 100,
                color: thirdColor,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Timer.periodic(Duration(milliseconds: 300), (timer) {
              //
              // });

              Future.delayed(Duration(seconds: 5), () {
                Timer.periodic(Duration(days: 5), (timer) {
                  setState(() {
                    temp = firstColor;
                    firstColor = secondColor;
                    secondColor = thirdColor;
                    thirdColor = temp!;
                  });
                });
                print("Run");
              });
            },
            child: Text("Press"),
          )
        ],
      ),
    );
  }
}
