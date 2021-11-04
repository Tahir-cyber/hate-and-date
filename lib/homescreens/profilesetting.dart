// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hate_and_love/Editprofile/editprofile.dart';
import 'package:hate_and_love/homescreens/settingpage.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//App bar

        appBar: AppBar(
          leadingWidth: 40,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[700],
          leading: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.pink,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/launch.png',
                //fit: BoxFit.cover,
                width: 90,
                height: 60,
              ),
            ],
          ),
          //Image.asset(' assets/images/launch.png',fit: BoxFit.cover,width: 10,height: 10,),

          actions: [Icon(Icons.person)],
        ),

//body

        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 90,
          ),
          color: Colors.grey[700],
          child: Column(
            //first column circle avatr text etc

            children: [
              Container(
                //padding: EdgeInsets.symmetric(vertical: 120),
                child: Center(
                  child: CircleAvatar(
                    foregroundColor: Colors.red,
                    radius: 30,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
              ),
              Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Niklas, 40',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.pink,
                        )
                      ],
                    ),
                    Text(
                      "University of peshawar",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              //second part cards

              Container(
                padding: EdgeInsets.only(left: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //card 1
                    //..
                    //..
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingPage()));
                      },
                      child: Container(
                        height: 76,
                        width: MediaQuery.of(context).size.width / 3,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(30)),
                          color: Colors.grey[800],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.pink,
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(color: Colors.pink),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    //card2
                    //....
                    //...
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 76,
                        child: Card(
                          color: Colors.pink,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              Text(
                                'Add media',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    //card 3
                    //....
                    //....
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 75,
                        child: Card(
                          color: Colors.grey[800],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_location_outlined,
                                color: Colors.pink,
                              ),
                              Text(
                                'Add Info',
                                style: TextStyle(color: Colors.pink),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

//Button

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 30, 50),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width - 30, 50),
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                onPressed: () {},
                icon: Text('photo tip: got a uniform?flunt it'),
                label: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.pinkAccent[400],
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
