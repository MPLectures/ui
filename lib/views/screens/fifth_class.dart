import 'package:flutter/material.dart';

class FifthClass extends StatefulWidget {
  @override
  State<FifthClass> createState() => _FifthClassState();
}

class _FifthClassState extends State<FifthClass> {
  String noImage = 'assets/images/noImage.jpg';

  String firstImage = 'assets/images/pexels-abdel-achkouk-16361788.jpg';

  String secondImage = 'assets/images/pexels-bychlo-18056645.jpg';

  String thirdImage = 'assets/images/pexels-seng-lam-ho-8844226.jpg';

  String image= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 450,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      image = firstImage;
                    });
                  },
                  child: Text("First"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      image = secondImage;
                    });
                  },
                  child: Text("Second"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      image = thirdImage;
                    });
                  },
                  child: Text("Third"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  image = noImage;
                });
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
