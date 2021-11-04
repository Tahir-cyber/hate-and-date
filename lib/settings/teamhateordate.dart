// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

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
            'Team Date Or Hate',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      ////////////////////////////////////////////////////////////////////////
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        color: Colors.black87,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                          Text("Team Date or Hate"),
                          SizedBox(height: 5),
                          Text(
                            "I want to receive news, updates and offers from Date or Hate",
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
