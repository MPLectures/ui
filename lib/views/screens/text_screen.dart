import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';
import 'package:ui/views/layouts/navigations.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkGreyColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Navigations()));
        },
        child: Text("Login"),
      ),
    );
  }
}
