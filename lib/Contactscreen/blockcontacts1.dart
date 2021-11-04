// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hate_and_love/Contactscreen/blockcontactstabview.dart';
import 'package:hate_and_love/Contactscreen/contactstabbarview.dart';

class BlockContacts1 extends StatelessWidget {
  const BlockContacts1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            shape: Border(
              bottom: BorderSide(color: Colors.pink),
            ),
            //TabBar
            bottom: TabBar(
                indicator: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(50)),
                tabs: [
                  Tab(
                    text: "contacts",
                  ),
                  Tab(
                    text: "Blocked",
                  ),
                ]),
            actions: [
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.pink,
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              // SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.pink,
                    child: Icon(
                      FontAwesomeIcons.ellipsisV,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
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
                'Setting',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: Colors.black87,
          ),

          //Body Starrts here
          body: TabBarView(
            children: [
              ContactScreen(),
              BlockContactsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
