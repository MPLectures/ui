import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';

class ScreenLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: MyColors.blackColor,
          size: 18,
        ),
        // title: Text("My first App"),
        // centerTitle: true,
        // actions: [
        //   Icon(
        //     Icons.menu,
        //     color: MyColors.blackColor,
        //     size: 18,
        //   ),
        //   SizedBox(
        //     width: 10,
        //   ),
        //   Icon(
        //     Icons.camera,
        //     color: MyColors.blackColor,
        //     size: 18,
        //   ),
        //   SizedBox(width: 10,),
        //   Icon(
        //     Icons.message,
        //     color: MyColors.blackColor,
        //     size: 18,
        //   ),
        //   SizedBox(width: 10,)
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 26,
                ),
              ),
            ),
            Image.asset(
              'assets/images/Logoooo.png',
              height: 100,
              width: 150,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontFamily: 'PoppinsLight',
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  // labelText: "Text",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: MyColors.greyColor),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility_outlined,
                  color: MyColors.darkGreyColor,
                ),
                hintText: 'Password',
                // labelText: "Text",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: MyColors.greyColor,
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontFamily: 'PoppinsRegular',
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
