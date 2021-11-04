// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ShowMe extends StatelessWidget {
  const ShowMe({Key? key}) : super(key: key);

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
              'Show Me',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black,
        ),

        // body
        //...
        //..
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.pink))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        fixedSize: Size(MediaQuery.of(context).size.width, 40)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Men",
                          style: TextStyle(color: Colors.white),
                        ),
                        // Icon(
                        //   Icons.check,
                        //   color: Colors.pink,
                        // )
                      ],
                    )),
              ),
              //2nd elevated button
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.pink))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        fixedSize: Size(MediaQuery.of(context).size.width, 40)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Women",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.check,
                          color: Colors.pink,
                        )
                      ],
                    )),
              ),
              //3rd elevated button
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.pink))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        fixedSize: Size(MediaQuery.of(context).size.width, 40)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Everyone",
                          style: TextStyle(color: Colors.white),
                        ),
                        // Icon(
                        //   Icons.check,
                        //   color: Colors.pink,
                        // )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
