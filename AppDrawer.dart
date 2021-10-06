// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:flutter_app_4/homepage.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.pink,
            child: DrawerHeader(
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          ListTile(
            title: Text("Home - Emotion"),
            leading: Icon(
              Icons.home,
              color: Colors.pink,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
