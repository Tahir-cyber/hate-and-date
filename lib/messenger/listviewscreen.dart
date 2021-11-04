// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hate_and_love/messenger/chatmodel.dart';


class ListTileScreen extends StatefulWidget {
  ListTileScreen({Key key, ChatModel chatModel}) : super(key: key);

  @override
  _ListTileScreenState createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
            radius: 25,
          ),
          title: Text(
            "Carolina",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Thats Awesome",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          trailing: Text(
            "3 min ago",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
        Divider(
          color: Colors.pink,
          height: 1,
        )
      ],
    );
  }
}
