// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hate_and_love/settings/updatephonenumber.dart';

class PhoneNumberSetting extends StatelessWidget {
  const PhoneNumberSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 50,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.pink,
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
              ),
            ),
          ),
          title: Center(
            child: Text(
              'Phone number Setting',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black,
        ),


        //body
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text Widget
                Text(
                  "Phone number",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(height: 15),

                //TextField button
                TextField(
                  decoration: InputDecoration(
                    hintText: "03339596727",
                    hintStyle: TextStyle(color: Colors.white),
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

                //Text Widget
                Text(
                  "Verfy phone number",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),

                //Elavated Phone Button
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        fixedSize: Size(350, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.black))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdatePhoneNumber()));
                    },
                    child: Text(
                      "update my phone number",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
