// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hate_and_love/loginscreens/createaccountphone6.dart';
import 'package:hate_and_love/loginscreens/privacypolicy.dart';
import 'package:hate_and_love/loginscreens/signingoogleface5.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 90),
                child: Image.asset(
                  'assets/images/launch.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),

            //paragraph Text

            Container(
              padding: EdgeInsets.only(left: 50, right: 10),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    children: [
                      TextSpan(
                          text: 'By creating an account, you agree with our  '),
                      TextSpan(
                        text: 'Terms.',
                        style: TextStyle(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy()));
                          },
                      ),
                      TextSpan(text: ' Learn how we process your data in our '),
                      TextSpan(
                        text: 'Privacy Policy ',
                        style: TextStyle(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy()));
                          },
                      ),
                      TextSpan(text: 'and '),
                      TextSpan(
                        text: 'Cookies Policy.',
                        style: TextStyle(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy()));
                          },
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 10),

//Create google button

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInGoogleFace()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 40),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/google.png'),
                    ),
                    // Image.asset(
                    //   'assets/images/google.png',
                    //   height: 35,
                    //   width: 35,
                    // ),
                    SizedBox(width: 10),
                    Text(
                      'Create With Google',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            //facebook button

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInGoogleFace()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 40),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage('assets/images/facebook.png')),
                    // Image.asset(
                    //   'assets/images/facebook.png',
                    //   height: 35,
                    //   width: 35,
                    // ),
                    SizedBox(width: 10),
                    Text(
                      'Create With Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            //phone button

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountPhone()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 40),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/phone.png'),
                    ),
                    // Image.asset(
                    //   'assets/images/phone.png',
                    //   height: 35,
                    //   width: 35,
                    // ),
                    SizedBox(width: 10),
                    Text(
                      'Create With Phone Number',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(
                    text: 'Have an Account?',
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInGoogleFace()));
                    },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
