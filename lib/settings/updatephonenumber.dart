// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hate_and_love/loginscreens/privacypolicy.dart';
import 'package:hate_and_love/settings/countrycodepink.dart';

class UpdatePhoneNumber extends StatefulWidget {
  UpdatePhoneNumber({Key? key}) : super(key: key);

  @override
  _UpdatePhoneNumberState createState() => _UpdatePhoneNumberState();
}

class _UpdatePhoneNumberState extends State<UpdatePhoneNumber> {
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
              'Update my Phone number',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black,
        ),

        //body
        body: Container(
          color: Colors.black87,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text(
                  "Please enter your new phone Number in Date and Hate app",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(height: 15),

                //Code picker button

                CodePicker(),
                SizedBox(height: 10),

                //Text

                RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text:
                                'When you tap to "Continue", Date or Hate will send a text with verification code. Message and data rates may apply. The verified phone number can be used to log in.'),
                        TextSpan(
                            text:
                                "Learn what happens when your number changes.",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Privacy()));
                              }),
                      ]),
                ),

                SizedBox(height: 10),

                //elavated Button
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
                      "Continue",
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
