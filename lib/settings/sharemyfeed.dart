// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class ShareFeed extends StatelessWidget {
  const ShareFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.pink,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Share My Feed',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black87,
      ),

      //body
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.centerRight,
                fixedSize: Size(350.0, 50),
                primary: Colors.grey[900],
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.pink,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shared my feed"),
                  SwitcherButton(
                    size: 30,
                    value: true,
                    onChange: (value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Sharing your social content will greatly increase your chances of receiving messages!",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(height: 12),
            Text(
              "Share Content",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(height: 8),
            //photo button
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("photos"),
                    SwitcherButton(
                      size: 30,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            //Spotify Anthem
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Spotify Anthems"),
                    SwitcherButton(
                      size: 30,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            //top Spotify Artist
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("top Spotify Artists"),
                    SwitcherButton(
                      size: 30,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            //BIo
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bio"),
                    SwitcherButton(
                      size: 30,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            //School
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("school"),
                    SwitcherButton(
                      size: 30,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            //work
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("work"),
                    SwitcherButton(
                      size: 30,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
