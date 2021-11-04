import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Activity extends StatelessWidget {
  const Activity
  ({Key? key}) : super(key: key);

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
              'Manage Activity status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black87,
        ),

        //body
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          color: Colors.black87,
          child: Column(
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
                    Text("Show activity status"),
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
              SizedBox(height: 15),
              Text(
                  "Turning this off will remove Vibes from your profile, and you'll no longer see profiles with mutual Vibes",
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ],
          ),
        ),
      ),
    );
  }
}
