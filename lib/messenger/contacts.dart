// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:hate_and_love/messenger/chatmodel.dart';
import 'package:hate_and_love/messenger/listviewscreen.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({
    Key? key,
    required this.chatModel,
  }) : super(key: key);
  final ChatModel chatModel;

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  List<ChatModel> chats = [
    ChatModel(
        name: 'Karolina',
        image: "assets/images/user.png",
        currentMessage: 'hi how are you',
        time: '3 min ago'),
    ChatModel(
        name: 'Dominica',
        image: "assets/images/user.png",
        currentMessage: 'how do you know',
        time: '13 min ago'),
    ChatModel(
        name: 'Anna',
        image: "assets/images/user.png",
        currentMessage: 'thats awesome',
        time: '15 min ago'),
    ChatModel(
        name: 'Violetta',
        image: "assets/images/user.png",
        currentMessage: 'ill be flying to new york',
        time: '10 min ago'),
    ChatModel(
        name: 'Dominica',
        image: "assets/images/user.png",
        currentMessage: 'how do you know',
        time: '13 min ago'),
    ChatModel(
        name: 'Anna',
        image: "assets/images/user.png",
        currentMessage: 'thats awesome',
        time: '15 min ago'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "Inbox",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            color: Colors.black87,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
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
                SizedBox(height: 15),
                ////////////////////////////////////////////////////////////////
                Row(
                  children: [
                    Text(
                      "New Matches",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 8,
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                //////////////////////////////////////////////////////////////////
                Stack(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(
                            "assets/images/user.png",
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(
                            "assets/images/user.png",
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(
                            "assets/images/user.png",
                          ),
                        ),
                        SizedBox(width: 10)
                      ],
                    ),
                    Positioned(
                      left: 30,
                      top: 20,
                      child: Icon(
                        Icons.circle,
                        color: Colors.pink,
                        size: 10,
                      ),
                    ),
                    Positioned(
                      left: 120,
                      top: 20,
                      child: Icon(
                        Icons.circle,
                        color: Colors.pink,
                        size: 10,
                      ),
                    ),
                    Positioned(
                      left: 75,
                      top: 20,
                      child: Icon(
                        Icons.circle,
                        color: Colors.pink,
                        size: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                //////////////////////////////////////////////////////////////
                Row(
                  children: [
                    Text(
                      "New Messages",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 8,
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                //////////////////////////////////////////////////////////////////
                Expanded (
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: chats.length,
                    itemBuilder: (contex, index) => ListTileScreen(
                      chatModel: chats[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
