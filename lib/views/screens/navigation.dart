import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';
import 'package:ui/views/screens/animation_screen_one.dart';
import 'package:ui/views/screens/fifth_class.dart';
import 'package:ui/views/screens/screen_login.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  TextEditingController _controller = TextEditingController();
  String isEven = 'No';
  String isOdd = 'No';
  String isPositive = 'No';
  String isNegative = 'No';
  String isVowel = 'No';
  String isConsonant = 'No';
  String isPrime = 'No';
  String isComposite = 'No';

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
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 120),
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Vowel:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isVowel,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Consonant:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isConsonant,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Even:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isEven,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Odd:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isOdd,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Prime:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isPrime,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Composite:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isComposite,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Positive:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isPositive,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Negative:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                isNegative,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                        ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _resetValues();
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
                              String inputValue = _controller.text;
                              try {
                                int intValue = int.parse(inputValue);
                                isEven = (intValue % 2 == 0) ? 'Yes' : 'No';
                                isOdd = (intValue % 2 != 0) ? 'Yes' : 'No';
                                isPositive = (intValue > 0) ? 'Yes' : 'No';
                                isNegative = (intValue < 0) ? 'Yes' : 'No';
                                if (intValue > 1) {
                                  bool isPrimeNumber = true;
                                  for (int i = 2; i < intValue; i++) {
                                    if (intValue % i == 0) {
                                      isPrimeNumber = false;
                                      break;
                                    }
                                  }
                                  isPrime = isPrimeNumber ? 'Yes' : 'No';
                                  isComposite = isPrimeNumber ? 'No' : 'Yes';
                                } else {
                                  isPrime = 'No';
                                  isComposite = 'No';
                                }
                              } catch (e) {
                                String lowerCaseInputValue =
                                    inputValue.toLowerCase();
                                isVowel = 'aeiou'.contains(lowerCaseInputValue)
                                    ? 'Yes'
                                    : 'No';
                                isConsonant = isVowel == 'Yes' ? 'No' : 'Yes';
                              }
                              // String inputValue = _controller.text;
                              //
                              // int intValue;
                              // String resultMessage;
                              //
                              // try {
                              //   intValue = int.parse(inputValue);
                              //   if (intValue % 2 == 0) {
                              //     isEven = 'Yes';
                              //   }
                              //   if (intValue % 2 != 0) {
                              //     isOdd = "yes";
                              //   }
                              //   if (intValue > 0) {
                              //     isPositive = "yes";
                              //   }
                              //   if (intValue < 0) {
                              //     isNegative = "yes";
                              //   }
                              //
                              // } catch (e) {
                              //   resultMessage = inputValue;
                              //   switch (resultMessage) {
                              //     case "a":
                              //     case "A":
                              //     case "E":
                              //     case "e":
                              //     case "i":
                              //     case "I":
                              //     case "o":
                              //     case "O":
                              //     case "u":
                              //     case "U":
                              //       isVowel = 'Yes';
                              //       break;
                              //     default:
                              //       isConsonant = 'Yes';
                              //   }
                              // }
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnimationScreenOne();
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
                    "Animation Screen",
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

  void _resetValues() {
    isEven = 'No';
    isOdd = 'No';
    isPositive = 'No';
    isNegative = 'No';
    isVowel = 'No';
    isConsonant = 'No';
    isPrime = 'No';
    isComposite = 'No';
  }
}
