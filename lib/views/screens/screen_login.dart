import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';

class ScreenLogin extends StatefulWidget {
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool isPasswordHidden = true;
  IconData eyeIcon = Icons.visibility_outlined;

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: MyColors.blackColor,
            size: 18,
          ),
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
            Expanded(
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
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _controller,
                    onChanged: (text) {},
                    keyboardType: TextInputType.emailAddress,
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
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: isPasswordHidden,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordHidden = !isPasswordHidden;
                          });
                          isPasswordHidden
                              ? eyeIcon = Icons.visibility_outlined
                              : eyeIcon = Icons.visibility_off_outlined;
                        },
                        child: Icon(
                          eyeIcon,
                          color: MyColors.darkGreyColor,
                        ),
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
                  SizedBox(
                    height: 20,
                  ),
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
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 13),
                    decoration: BoxDecoration(
                        color: MyColors.redColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: MyColors.whiteColor,
                        fontFamily: 'PoppinsSemiBold',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          // thickness: 2,
                          color: MyColors.blackColor,
                          indent: 50,
                          endIndent: 15,
                        ),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Divider(
                          // thickness: 2,
                          color: MyColors.blackColor,
                          indent: 15,
                          endIndent: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                        decoration: BoxDecoration(
                            color: MyColors.blueColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-1, -2),
                                  blurRadius: 33,
                                  spreadRadius: 5,
                                  color: MyColors.blackColor.withOpacity(0.1))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/facebook (8) 1.png',
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                color: MyColors.whiteColor,
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                        decoration: BoxDecoration(
                            color: MyColors.blackColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/ic_google.png',
                              height: 30,
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                color: MyColors.whiteColor,
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account  ",
                    style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 13,
                        color: MyColors.darkGreyColor.withOpacity(0.5)),
                  ),
                  VerticalDivider(
                    color: MyColors.blackColor,
                  ),
                  Text(
                    "Signup",
                    style: TextStyle(
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 14,
                      color: MyColors.redColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
