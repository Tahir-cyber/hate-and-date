// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hate_and_love/loginscreens/loginphone7.dart';

class SignInGoogleFace extends StatelessWidget {
  const SignInGoogleFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30),
                child: Image.asset(
                  'assets/images/launch.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),

            //paragraph Text

            Container(
              padding: EdgeInsets.only(left: 50, right: 10),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    children: [
                      TextSpan(
                          text: 'By clicking "Log in", you agree with our  '),
                      TextSpan(
                        text: 'Terms.',
                        style: TextStyle(decoration: TextDecoration.underline),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => Privacy()));
                        //   },
                      ),
                      TextSpan(text: ' Learn how we process your data in our '),
                      TextSpan(
                        text: 'Privacy Policy ',
                        style: TextStyle(decoration: TextDecoration.underline),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => Privacy()));
                        // },
                      ),
                      TextSpan(text: 'and '),
                      TextSpan(
                        text: 'Cookies Policy.',
                        style: TextStyle(decoration: TextDecoration.underline),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => Privacy()));
                        //   },
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
                      'Log In With Google',
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
                      'Log In With Facebook',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPhone()));
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
                      'Log In With Phone Number',
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
                  text: 'Dont have an account?',
                  // recognizer: TapGestureRecognizer()..onTap = () {}
                ),
              ]),
            ),

            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(
                  text: 'Trouble Logging in?',
                  // recognizer: TapGestureRecognizer()..onTap = () {}
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
