// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hate_and_love/loginscreens/otp8.dart';
import 'dart:ui';

import 'package:hate_and_love/countrycodepicker2.dart/countrycodepicker.dart';

class LoginPhone extends StatefulWidget {
  LoginPhone({Key? key}) : super(key: key);

  @override
  _LoginPhoneState createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                  child: Image.asset(
                    'assets/images/launch.png',
                    width: 130,
                    height: 130,
                  ),
                ),
              ),

              //Text Paragraph

              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 50),
                // height: 150,
                // width: 210,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: 'Please Enter Your Phone Number\n ',
                          style: TextStyle(fontSize: 16)),
                      TextSpan(
                          text: 'For Log in to   \n ',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                        text: 'For Date Or Hate App',
                      ),
                    ],
                  ),
                ),
              ),

              // phone button
              MyHomePage(),

              // Container(),

              SizedBox(
                height: 20,
              ),

              //rich text

              Container(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text:
                                'When you tap to "Continue", Date or Hate will send a text with'),
                        TextSpan(
                            text:
                                'verification code. Message and data rates may apply. The'),
                        TextSpan(
                            text:
                                'verified phone number can be used to log in. Learn what'),
                        TextSpan(text: 'happens when your number changes.'),
                      ]),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PhoneOtp()));
                },
                child: Text('Continue', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(330.0, 50),
                  primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.pink,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
