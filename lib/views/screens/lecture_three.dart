import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';

class LectureThree extends StatefulWidget {
  @override
  State<LectureThree> createState() => _LectureThreeState();
}

class _LectureThreeState extends State<LectureThree> {
  Color firstColor = MyColors.redColor;

  Color secondColor = MyColors.aqua;

  String firstText = "Red";

  String secondText = "Aqua";

  Color? tempColor;

  String? tempText;

  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Scaffold(
      backgroundColor: MyColors.yellow,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: firstColor,
                  child: Center(
                    child: Text(firstText),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: secondColor,
                  child: Center(
                    child: Text(secondText),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState((){
                  tempColor = firstColor;
                  firstColor = secondColor;
                  secondColor = tempColor!;
                  tempText = firstText;
                  firstText = secondText;
                  secondText = tempText!;
                });
              },
              child: Text("Swap"),
            )
          ],
        ),
      ),
    );
  }
}
// ripple effect
