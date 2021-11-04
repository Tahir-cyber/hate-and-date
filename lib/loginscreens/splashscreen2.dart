// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_web_libraries_in_flutter



import 'package:flutter/material.dart';
import 'package:hate_and_love/loginscreens/registerscreeen3.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Center(
        child: Image(
          image: AssetImage('assets/images/launch.png'),
        ),
      ),
    ));
  }
}
