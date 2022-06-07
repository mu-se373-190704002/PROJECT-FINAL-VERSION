import 'package:flutter/material.dart';
import 'package:projectapp/pages/home_page.dart';
import 'package:projectapp/pages/profile_page.dart';
import 'package:projectapp/pages/todo_list.dart';
import 'package:projectapp/themes/theme.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(color: backgroundColor, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: greenColor.withOpacity(0.38)),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icon(Icons.home, color: greenColor)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ToDoPage(title: 'Plan your plant care with to do list :)')),
                );
              },
              icon: Icon(Icons.feed, color: greenColor)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              icon: Icon(Icons.person, color: greenColor)),
        ],
      ),
    );
  }
}

