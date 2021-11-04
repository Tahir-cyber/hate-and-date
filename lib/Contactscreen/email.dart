// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

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
            'Email',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black87,
      ),

      /////////////////
      ///body
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Control the emails you want to get - all of them just the important stuff or the bare minimum. You can always unsubscribe at the bottom of any email.",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                hintText: "dummy@gmail.com",
                hintStyle: TextStyle(color: Colors.white60),
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.pink,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.pink, width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.pink, width: 1.5),
                ),
              ),
            ),
            SizedBox(height: 5),
            //////////////////////////////////////////////////////////////////
            Text(
              "Verify your email",
              style: TextStyle(color: Colors.pink),
            ),
            SizedBox(height: 20),
            /////////////////////////////////////////////////////////////////
            ///
            Text(
              "Send verification Email",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
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
                    Text("New matches"),
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
            //////////////////////////////////////////////////////////////////
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
                    Text("New Messages"),
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
            ////////////////////////////////////////////////////////////////////
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
                          Text("Promotion"),
                          Text(
                            "I want to receive news, updates and offers from hate or date.",
                            style: TextStyle(fontSize: 8),
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
            SizedBox(height: 50),
            Center(
                child: Text(
              "UNSUBSUCRIBE FROM ALL",
              style: TextStyle(color: Colors.pink),
            )),
          ],
        ),
      ),
    ));
  }
}
