// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hate_and_love/homescreens/bottomnavigation.dart';
import 'package:hate_and_love/homescreens/profilesetting.dart';

class HomeSreen extends StatefulWidget {
  HomeSreen({Key key}) : super(key: key);

  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          leading: Icon(Icons.person_add_alt_outlined),
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
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[800],
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 80,
                  // height: 560,
                  child: Swiper(
                    itemCount: 3,
                    itemHeight: MediaQuery.of(context).size.height - 80,
                    itemWidth: MediaQuery.of(context).size.width,
                    layout: SwiperLayout.STACK,
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.red, activeColor: Colors.white),
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        // height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/user.png',
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.music_note,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.music_note,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.music_note,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.music_note,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileSetting()));
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Golmez 21',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.check_circle_outline,
                                            color: Colors.red)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.brightness_1_rounded,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Nyligen Aktiv',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.hail_outlined,
                                            color: Colors.white),
                                        Text(
                                          'University of Los Angeles',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.houseboat_rounded,
                                              color: Colors.red[500]),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '5674 km bort',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                BottomNavigation(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
