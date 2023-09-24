import 'package:flutter/material.dart';
import 'package:ui/helpers/constants.dart';
import 'package:ui/views/layouts/navigations.dart';

class TextScreen extends StatelessWidget {

  List<String> title = [
    "Faiz",
    "Asfand",
    'ramzan',
    'Ali',
  ];
  List<String> subTitle = [
    "a",
    "b",
    'c',
    'd',
  ];
  List<String> image = [
    "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
    "https://marketplace.canva.com/EAFHfL_zPBk/1/0/1600w/canva-yellow-inspiration-modern-instagram-profile-picture-kpZhUIzCx_w.jpg",
    'https://thegoneapp.com/wp-content/uploads/tiktok-profile-picture-idea-4-1-1-2.jpeg',
    'https://marketplace.canva.com/EAFRWLkkJIU/1/0/1600w/canva-white-and-orange-minimalist-instagram-profile-picture-c90IYqhFSLI.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.yellow,
      body: ListView.separated(
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(image[index]),
              ),
              title: Text(title[index]),
              subtitle: Text(subTitle[index]),
              trailing: Text("09:10"),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            indent: 30,
            endIndent: 30,
            color: Colors.black,
            thickness: 1,
          );
        },
      ),
      // Center(
      //   child: CircleAvatar(
      //     radius: 90,
      //     child: Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
      //   ),
      // ),
      // ListView(
      //   children: [
      //
      //     // Card(
      //     //   elevation: 2,
      //     //   child: ListTile(
      //     //     leading: CircleAvatar(
      //     //       radius: 25,
      //     //       child: Image.network(
      //     //           'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
      //     //     ),
      //     //     title: Text("Muaaz"),
      //     //     subtitle: Text("How are you?"),
      //     //     trailing: Text("09:10"),
      //     //   ),
      //     // ),
      //     // Divider(
      //     //   indent: 30,
      //     //   endIndent: 30,
      //     //   color: Colors.black,
      //     //   thickness: 1,
      //     // ),
      //     // Container(
      //     //   color: MyColors.whiteColor,
      //     //   child: ListTile(
      //     //     leading: CircleAvatar(
      //     //       radius: 25,
      //     //       child: Image.network(
      //     //           'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
      //     //     ),
      //     //     title: Text("Sir Mubashar"),
      //     //     subtitle: Text("Did you complete you assignment?"),
      //     //     trailing: Text("09:20"),
      //     //   ),
      //     // ),
      //   ],
      // ),
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
