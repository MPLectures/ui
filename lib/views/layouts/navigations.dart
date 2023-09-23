import 'package:flutter/material.dart';
import 'package:ui/views/layouts/layout_home.dart';
import 'package:ui/views/layouts/layout_notification.dart';
import 'package:ui/views/layouts/layout_setting.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Navigations extends StatefulWidget {
  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  int selectedIndex = 0;
  List layout = [
    LayoutHome(),
    LayoutNotification(),
    LayoutSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layout[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        // type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   gapLocation: GapLocation.center,
      //   notchSmoothness: NotchSmoothness.verySmoothEdge,
      //   // notchSmoothness: NotchSmoothness.softEdge,
      //   activeColor: Colors.red,
      //   icons: [
      //     Icons.home,
      //     Icons.home,
      //     Icons.home,
      //   ],
      //   activeIndex: selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

  }
}
