// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hate_and_love/settings/languagepicker.dart';

class Addlanguages extends StatefulWidget {
  @override
  _AddlanguagesState createState() => _AddlanguagesState();
}

class _AddlanguagesState extends State<Addlanguages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[700],
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
            'Add language',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Container(
          width: MediaQuery.of(context).size.width - 35,
          color: Colors.grey[500],
          height: 50,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(34),
          //   border: Border.all(color: Colors.pink, width: 1),
          // ),
          child: LanguagePicker(),
        ),
      ),
    ));
  }
}
