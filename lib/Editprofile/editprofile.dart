// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<String> values = [
    'assets/images/t1.jpg',
    'assets/images/t2.jpg',
    'assets/images/t3.jpg',
    'assets/images/t4.jpg',
  ];
  List<String> container = [
    "Cycling",
    "Filming",
    "photography",
  ];

  List<String> container2 = [
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
    "Cycling",
    "Filming",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
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
              'Edit profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black87,
        ),
        //////////////////////////////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 4 || index == 5) {
                      return Container(
                        width: 15,
                        height: 20,
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.pink,
                                radius: 15,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container(
                          //color: Colors.black,
                          height: 20,
                          width: 13,
                          child: Image.asset(
                            values[index],
                            fit: BoxFit.cover,
                          ));
                    }
                  },
                ),
                SizedBox(height: 15),
                //////////////////////////////////////////////////////////////////
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      fixedSize: Size(320.0, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Add Media",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),
                /////////////////////////////////////////////////////////////////
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.centerRight,
                    fixedSize: Size(320.0, 50),
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
                      Text("Smart Photos"),
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
                SizedBox(height: 5),
                ///////////////////////////////////////
                Text(
                  "Smart photos continuously tests all your profile photos to find the best one.",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("About Gomez",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                /////////////////////////////////////////////////////
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                    // hintText: "about you......",
                    // hintStyle: TextStyle(color: Colors.white60),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 70),
                      child: Text(
                        "about you.....",
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 90),
                      child: Text(
                        "500",
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Passions",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "(3/5)",
                      style: TextStyle(color: Colors.white),
                    ),
                    /////////////////////////////////////////////////////////
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  child: GridView.builder(
                      itemCount: container2.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 4),
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0 || index == 1 || index == 2) {
                          return Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    // fixedSize: Size(15, 10),
                                    primary: Colors.pink,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    container[index],
                                    style: TextStyle(fontSize: 10),
                                  ),
                                )),
                          );
                        } else {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(15, 10),
                                primary: Colors.black54,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Colors.pink, width: 0.3))),
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              container2[index],
                              style: TextStyle(fontSize: 10),
                            )),
                          );
                        }
                      }),
                ),
                SizedBox(height: 20),

                Text("Job Title",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(height: 10),
                //////////////////////////////////////////////////////////////
                TextField(
                  decoration: InputDecoration(
                    hintText: "Add Job Title.......",
                    hintStyle: TextStyle(color: Colors.white60),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////
                SizedBox(height: 20),

                Text("Company",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(height: 10),
                //////////////////////////////////////////////////////////////
                TextField(
                  decoration: InputDecoration(
                    hintText: "Add Company.......",
                    hintStyle: TextStyle(color: Colors.white60),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                  ),
                ),
                //////////////////////////////////////////////////////////////
                SizedBox(height: 20),

                Text("School",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(height: 10),
                //////////////////////////////////////////////////////////////
                TextField(
                  decoration: InputDecoration(
                    hintText: "Southeast university",
                    hintStyle: TextStyle(color: Colors.white60),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 0.2),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Show My Instagram Phito",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(height: 10),

                ///////////////////////////////////////////////////////////
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(320, 50),
                      primary: Colors.black54,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.pink, width: 0.3))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text(
                      "Connect Instagram",
                      style: TextStyle(fontSize: 11, color: Colors.pink),
                    ),
                  ),
                ),
                ///////////////////////////////////////////////////
                SizedBox(height: 10),
                Text("Gender",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.panorama_fish_eye_outlined,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Male",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Female",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Control your profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                ///////////////////////////////////////////////////////////
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.pink, width: 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dont Show my age",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                      SizedBox(height: 8),
                      Divider(
                        thickness: 2.0,
                        endIndent: 10.0,
                        height: 3,
                        color: Colors.pink,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Make my distance invisible",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
