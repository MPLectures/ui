import 'package:flutter/material.dart';

class LectureTwo extends StatefulWidget {
  @override
  State<LectureTwo> createState() => _LectureTwoState();
}

class _LectureTwoState extends State<LectureTwo> {
  Color firstColor = Colors.red;

  Color secondColor = Colors.teal;

  Color thirdColor = Colors.green;

  Color fourthColor = Colors.cyanAccent;

  Color? tempColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
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
                          color: firstColor,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          color: fourthColor,
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pexels-bychlo-18056645.jpg')
                        )
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: secondColor,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          color: thirdColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/pexels-abdel-achkouk-16361788.jpg'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    tempColor = firstColor;
                    firstColor = secondColor;
                    secondColor = thirdColor;
                    thirdColor = fourthColor;
                    fourthColor = tempColor!;
                  });
                },
                child: Text("swap"),
              )
            ],
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
