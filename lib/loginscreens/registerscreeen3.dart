// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hate_and_love/countrycodepicker2.dart/countrycodypickerscree.dart';
import 'package:hate_and_love/loginscreens/createaccount4.dart';
import 'package:hate_and_love/loginscreens/privacypolicy.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                  child: Image.asset(
                    'assets/images/launch.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text:
                              'By pressing create account or log in you agree'),
                      TextSpan(
                          text:
                              'to be conditions. Read more about how we process your'),
                      TextSpan(text: 'data I was '),
                      TextSpan(
                        text: 'privacy policy ',
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
                        text: 'cookie policy.',
                        style: TextStyle(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy()));
                          },
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),
              // MaterialButton(
              //   padding: EdgeInsets.fromLTRB(70, 0, 30, 0),
              //   height: 50,
              //   color: Colors.pink,
              //   onPressed: () {},
              //   child: Text('Create An Account'),
              //   shape: RoundedRectangleBorder(
              //       side: BorderSide(color: Colors.black),
              //       borderRadius: BorderRadius.circular(58)),
              // ),

              //Create account button

              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => CreateAccount()));
                },
                child: Text('Create An Account'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300.0, 50),
                  primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              SizedBox(height: 15),

              //sign in button

              ElevatedButton(
                onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>CreateAccount()));
                 },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.pink),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 50),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.pink,
                      width: 1.0,
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
