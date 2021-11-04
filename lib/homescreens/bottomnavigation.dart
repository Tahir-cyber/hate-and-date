// ignore_for_file: prefer_const_constructors
// @dart=2.9 
import 'package:flutter/material.dart';
import 'package:hate_and_love/Contactscreen/contactstabbarview.dart';
import 'package:hate_and_love/messenger/contacts.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      selectedIconTheme: IconThemeData(color: Colors.red),
      selectedItemColor: Colors.red,
      backgroundColor: Colors.grey[900],
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InboxScreen()));
              },
              child: Icon(
                Icons.accessible,
                color: Colors.grey,
              )),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ProfileSetting()));
              },
              child: Icon(
                Icons.settings,
                color: Colors.red,
              )),
          //backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          label: '',
          icon: InkWell(
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => SignIN()));
              },
              child: Icon(
                Icons.logout,
                color: Colors.grey,
              )),
          // backgroundColor: Colors.grey),
        )
      ],
    );
  }
}
