import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';
import 'package:ui/views/screens/fifth_class.dart';
import 'package:ui/views/screens/screen_login.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  TextEditingController _controller = TextEditingController();
  String result = 'Your text will appear here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          result,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      maxLength: 1,
                      controller: _controller,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            _controller.clear();
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: MyColors.redColor,
                          ),
                        ),
                        hintText: "Enter anything",
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: MyColors.redColor),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: MyColors.redColor),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              result = "";
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: MyColors.blackColor.withOpacity(0.40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                color: MyColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              switch (_controller.text) {
                                case "a":
                                case "A":
                                case "e":
                                case "E":
                                case "i":
                                case "I":
                                case "o":
                                case "O":
                                case "u":
                                case "U":
                                  result =
                                      "Your given character '${_controller.text}' is Vowel";
                                  break;
                                default:
                                  result =
                                      "Your given character '${_controller.text}' is Consonant";
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: MyColors.blackColor.withOpacity(0.40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Show",
                              style: TextStyle(
                                color: MyColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ScreenLogin();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Login Screen",
                    style: TextStyle(
                      color: MyColors.whiteColor,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FifthClass();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Fifth class Screen",
                    style: TextStyle(
                      color: MyColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
