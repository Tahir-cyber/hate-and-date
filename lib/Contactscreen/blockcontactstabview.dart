// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BlockContactsScreen extends StatelessWidget {
  const BlockContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      color: Colors.black54,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width - 30,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.pink, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.pink, width: 1.5),
                    ),
                    hintText: "Search for name or phone number",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                  ),
                )),
            SizedBox(height: 100),
            Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  children: [
                    Text(
                      "NO Blocked Contacts",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Blocked people by using the 'Contatcs tab' to select anyone you don't want to see.",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
