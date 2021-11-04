// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hate_and_love/Contactscreen/addcontacts.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  fixedSize: Size(MediaQuery.of(context).size.width - 40, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContacts()));
              },
              child: Text("Import Contact"),
            )
          ],
        ),
      ),
    );
  }
}
