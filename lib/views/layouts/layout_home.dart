import 'package:flutter/material.dart';

class LayoutHome extends StatelessWidget {
  const LayoutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Home Layout"),
      ),
    );
  }
}
