import 'package:flutter/material.dart';
import 'package:mealmonkey/view/LoginScreen.dart';
import 'package:mealmonkey/view/Signupscreen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("asset/image/Organe top shape.png"),
              Positioned(
                bottom: -180,
                right: 0,
                left: 0,
                child: Image.asset("asset/image/Monkey face.png"),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
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
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "Discover the best foods from over 1,000",
            style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
          ),
          SizedBox(
            height: height * 0.003,
          ),
          Text(
            "restaurants and fast delivery to your doorstep",
            style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInScreen(),
                  ));
            },
            child: Text(
              "LogIn",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Color(0xffFC6011),
            height: height * 0.08,
            minWidth: width * 0.9,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ));
            },
            child: Container(
              height: height * 0.08,
              width: width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Color(0xffFC6011),
                ),
              ),
              child: Center(
                child: Text(
                  "Create an Account",
                  style: TextStyle(color: Color(0xffFC6011), fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
