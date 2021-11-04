// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class PushNotification extends StatelessWidget {
  const PushNotification({Key? key}) : super(key: key);

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
            'Push Notification',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
///////////////////////////////////////////////////////////////////////////////
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: Column(
          children: [
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 70),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Matches"),
                          SizedBox(height: 5),
                          Text(
                            "you gust got a new match",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
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
            ///////////////////////////////////////////////////////////////////
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 70),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Messages"),
                          SizedBox(height: 5),
                          Text(
                            "Someone Sent you a message",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
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
            ///////////////////////////////////////////////////////////////////
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 70),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Messsages Likes"),
                          SizedBox(height: 5),
                          Text(
                            "Some One liked your message",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
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
            ///////////////////////////////////////////////////////////////////
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 70),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Super Liked"),
                          SizedBox(height: 5),
                          Text(
                            "you have been super Liked! Swipe to found out by whom",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
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
            //////////////////////////////////////////
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 70),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Top Picks"),
                          SizedBox(height: 5),
                          Text(
                            "your daily top picks are ready!",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
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
