// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hate_and_love/homescreens/homescreen.dart';

class PhoneOtp extends StatefulWidget {
  PhoneOtp({Key? key}) : super(key: key);

  @override
  _PhoneOtpState createState() => _PhoneOtpState();
}

class _PhoneOtpState extends State<PhoneOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[700],
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
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: 'Please Enter 6 digit Code\n'),
                    TextSpan(text: 'That Sent To Your Phone Number')
                  ],
                ),
              ),
              SizedBox(height: 24),

              //here is the otp code

              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: true, last: true),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              //Elavated button

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeSreen()));
                },
                child: Text('Continue', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(320.0, 50),
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

  //OTP Method

  _textFieldOTP({bool? first, last}) {
    return Container(
      width: 40,
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.5,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 1 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.black12, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.black12, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
