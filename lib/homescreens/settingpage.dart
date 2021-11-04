// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print, must_be_immutable, prefer_final_fields
// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hate_and_love/Contactscreen/email.dart';
import 'package:hate_and_love/homescreens/slider.dart';
import 'package:hate_and_love/settings/activitystatus.dart';
import 'package:hate_and_love/settings/addlanguage.dart';
import 'package:hate_and_love/Contactscreen/blockcontacts1.dart';
import 'package:hate_and_love/settings/autoplays.dart';
import 'package:hate_and_love/settings/claimusername.dart';
import 'package:hate_and_love/settings/phonenumbersetting.dart';
import 'package:hate_and_love/settings/pushnotification.dart';
import 'package:hate_and_love/settings/readrecipt.dart';
import 'package:hate_and_love/settings/sharemyfeed.dart';
import 'package:hate_and_love/settings/showme.dart';
import 'package:hate_and_love/settings/swipesurge.dart';
import 'package:hate_and_love/settings/teamhateordate.dart';
import 'package:hate_and_love/settings/toppicks.dart';
import 'package:hate_and_love/settings/vibes.dart';
import 'package:switcher_button/switcher_button.dart';

class SettingPage extends StatefulWidget {
  final String title;

  const SettingPage({Key key, this.title}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  double value = 200;
  static double _lowervalue = 1;
  static double _uppervalue = 100;
  RangeValues values = RangeValues(_lowervalue, _uppervalue);

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
              'Setting',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black87,
        ),

        //body

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[800],
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Setting",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //first Button

                  Center(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.pink, width: 1.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.pink, width: 1.5),
                          ),

                          hintText: 'phone Number',
                          hintStyle: TextStyle(color: Colors.white),
                          // prefixText: 'Phone Number',
                          // prefixStyle: TextStyle(color: Colors.white),
                          suffixText: '03339169599',
                          suffixStyle: TextStyle(color: Colors.white),
                          suffixIcon: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PhoneNumberSetting()));
                            },
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  //Text
                  Text(
                    'Verify A phone number to help secure your account',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),

                  Text(
                    'Discovery Setting',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),

                  //2nd button location
                  Center(
                    child: Container(
                      child: TextField(
                        decoration: decorationField().copyWith(
                          hintText: 'Location',
                          prefixIcon: Icon(
                            Icons.location_on,
                            color: Colors.pink,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Text(
                              "My current  location",
                              style: TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),
                        //InputDecoration(
                        //   prefixIcon: Icon(
                        //     Icons.location_on,
                        //     color: Colors.pink,
                        //   ),
                        //   hintText: "Location",
                        //   hintStyle: TextStyle(color: Colors.white),
                        //   suffixIcon: Padding(
                        //     padding: const EdgeInsets.symmetric(
                        //         vertical: 10, horizontal: 10),
                        //     child: Text(
                        //       "My current  location",
                        //       style: TextStyle(color: Colors.pink),
                        //     ),
                        //   ),
                        //   focusedBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(30),
                        //     borderSide:
                        //         BorderSide(color: Colors.pink, width: 1.5),
                        //   ),
                        //   enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(30),
                        //     borderSide:
                        //         BorderSide(color: Colors.pink, width: 1.5),
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "change your location to see Love or Hate members in other cities",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),

                  //3rd button Global

                  TextField(
                    decoration: decorationField(),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Going global will allow you to see people nearby and from around the world",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Preferred Language",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  //Textfield select language
                  TextField(
                    decoration: decorationField().copyWith(
                        hintText: "English",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(height: 8),

                  //Add language button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addlanguages()));
                    },
                    child: Text('Add Language', style: TextStyle(fontSize: 20)),
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

                  SizedBox(
                    height: 8,
                  ),

                  //Slider
                  SliderWidget(),

                  SizedBox(height: 10),

                  Text(
                    "Show me",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  //Show me women Button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShowMe()));
                    },
                    icon: Text("Women"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 190),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),

                  //Range slider
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 25,
                    child: RangeSlider(
                      min: _lowervalue,
                      max: _uppervalue,
                      values: values,
                      divisions: 100,
                      labels: RangeLabels(
                          values.start.toString(), values.end.toString()),
                      inactiveColor: Colors.green,
                      activeColor: Colors.pink,
                      onChanged: (val) {
                        setState(() {
                          values = val;
                        });
                      },
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(color: Colors.pink, width: 1)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Date or Hate use these preferences to suggest matches. Some match suggestions may not fall within your desired parameters.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),

                  //show men on date and hate
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerRight,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Show me on date and hate"),
                        SwitcherButton(
                          size: 30,
                          value: true,
                          onChange: (value) {
                            print(value);
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8),
                  //Block Contacts
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlockContacts1()));
                    },
                    icon: Text("Block Contact"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 190),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),

                  SizedBox(height: 15),
                  //share my feed button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShareFeed()));
                    },
                    child: Text("Share My Feed"),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Sharing your social content will greatly increase your chances of receiving messages!',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  //Recomended sort button
                  //show me on date or hate button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerRight,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Show me on date and hate"),
                        SwitcherButton(
                          size: 30,
                          value: true,
                          onChange: (value) {
                            print(value);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Turning this off will exclude your profile when your matches sort by recommended.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Data Usage",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Autoplay video button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AutoPlayVideos()));
                    },
                    icon: Text("AutoPlays Videos"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 170),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Web profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Web profile username claim button..........
                  //...................
                  //.................
                  //...................
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClaimUserName()));
                    },
                    icon: Text("UserName"),
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "claims yours",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Create username. Share your username.Have people all over the world match with you right on Date or Hate.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Vibes",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Manage vibes button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vibes()));
                    },
                    icon: Text("Manage Vibes"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 190),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Top Picks",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Toppicks video button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TopPicks()));
                    },
                    icon: Text("Manage Top Picks"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 170),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  //////////////////////////////////////////////////////////////
                  SizedBox(height: 8),
                  Text(
                    "Read Recipt",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Manage Read Recipt video button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Readrecipt()));
                    },
                    icon: Text("Manage Read Recipts"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 8),

                  Text(
                    "Swipe Surge",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Manage surge v button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SwipeSurge()));
                    },
                    icon: Text("Manage Swipe Surge"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Activity Status",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  //Manage activity Status button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: Size(350.0, 50),
                      primary: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Activity()));
                    },
                    icon: Text("Manage Activity status"),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 140),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 12),

                  //Container for App Setting
                  Text("App Seetings",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Container(
                    width: MediaQuery.of(context).size.width - 35,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(color: Colors.pink, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Notification",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Email()));
                            },
                            child: Text("Email",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PushNotification()));
                            },
                            child: Text("Push Notification",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Team()));
                            },
                            child: Text("Team Hate or date",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  //Show distance button

                  Text(
                    "Show Distance",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(color: Colors.pink, width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('km.', style: TextStyle(fontSize: 10)),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150.0, 20),
                            primary: Colors.pink,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Mi.', style: TextStyle(fontSize: 10)),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150.0, 20),
                            primary: Colors.grey[800],
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
                  SizedBox(height: 10),

                  //Payment Account Button
                  Text(
                    "Payement Account",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(color: Colors.pink, width: 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Manage Payement account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                        SizedBox(height: 8),
                        Divider(
                          thickness: 2.0,
                          endIndent: 10.0,
                          height: 3,
                          color: Colors.pink,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Manage Payement account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Contact US",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  //Contact us button field
                  TextField(
                    decoration: decorationField().copyWith(
                      hintText: "Manage Activity Status",
                      suffixIcon: Icon(Icons.arrow_forward_ios,
                          color: Colors.grey[800]),
                    ),
                  ),
                  SizedBox(height: 5),
                  //Comunity tips container
                  Text(
                    "Comunity",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(color: Colors.pink, width: 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Comunity guideline",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Divider(
                          thickness: 2.0,
                          endIndent: 10.0,
                          height: 3,
                          color: Colors.pink,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Safety Tips",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),

                  //Share date or hate
                  TextField(
                    decoration: decorationField().copyWith(
                      hintText: "Share date or hate",
                      suffixIcon: Icon(Icons.arrow_forward_ios,
                          color: Colors.grey[800]),
                    ),
                  ),
                  SizedBox(height: 5),

                  //Container For legal Terms
                  Text("Legal",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width - 35,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(color: Colors.pink, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Licences",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Privacy prefrecences",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("privacy policy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Term of services",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  //logout button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Log Out', style: TextStyle(fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(350.0, 50),
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  Container(
                    color: Colors.black38,
                    height: 100.0,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Delete Account",
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration decorationField() {
    return InputDecoration(
      hintText: "Global",
      hintStyle: TextStyle(color: Colors.white),
      suffixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SwitcherButton(
          size: 30,
          value: true,
          onChange: (value) {
            print(value);
          },
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.pink, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.pink, width: 1.5),
      ),
    );
  }
}
