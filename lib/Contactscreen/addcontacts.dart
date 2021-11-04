// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddContacts extends StatelessWidget {
  const AddContacts({Key? key}) : super(key: key);

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
            'Add Contacts',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black87,
      ),

      //body
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 8),
            ///////////////////////////////////////////////////////////////////
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                hintText: "Enter name",
                hintStyle: TextStyle(color: Colors.white, fontSize: 10),
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
            SizedBox(height: 25),
            Row(
              children: [
                Text("Contact Info",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                SizedBox(width: 8),
                Text("(phone or email)",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
              ],
            ),
            SizedBox(height: 15),

            ///////////////////////////////////////////////////////////////////

            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                hintText: "Add Phone Number",
                hintStyle: TextStyle(color: Colors.white, fontSize: 10),
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
            /////////////////////////////////////////////////////////////////
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                hintText: "add email",
                hintStyle: TextStyle(color: Colors.white, fontSize: 10),
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
            SizedBox(height: 20),
            ///////////////////////////////////////////////////////////////
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  fixedSize: Size(MediaQuery.of(context).size.width - 40, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContacts()));
              },
              child: Text("Done"),
            )
          ],
        ),
      ),
    ));
  }
}
