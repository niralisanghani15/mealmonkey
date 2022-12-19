import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mealmonkey/view/welcomescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomeScreen(),
            )));
    super.initState();
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/image/Monkey face.png",
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Meal",
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Monkey",
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "F O O D  D E l I V E R Y",
              style: TextStyle(color: Color(0xff4A4B4D), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
