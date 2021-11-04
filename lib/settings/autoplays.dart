// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AutoPlayVideos extends StatelessWidget {
  const AutoPlayVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.pink,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
        ),
        title: Center(
          child: Text(
            'AutoPlays Videos',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black87,
      ),

      //body
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Playing videos uses more data than displaying photos, so choose when videos autoplay here.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),
            Text(
              "AutoPlay Videos",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            ////////////////////////////////////////
            ///
            ///
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("on Wi-fi and mobile and data"),
                    Icon(
                      Icons.check,
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
            ),
            //////////////////////////////////////////
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Text("on Wi-fi and mobile and data"),
              ),
            ),
            /////////////////////////////////////
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.pink, width: 0.5)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  fixedSize: Size(350.0, 50),
                  primary: Colors.grey[900],
                ),
                onPressed: () {},
                child: Text("Never autoplay video "),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
