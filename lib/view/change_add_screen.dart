import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';

class changeAddScreen extends StatefulWidget {
  @override
  _changeAddScreenState createState() => _changeAddScreenState();
}

class _changeAddScreenState extends State<changeAddScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: width * 0.005),
                            Text(
                              "Change Address",
                              style: TextStyle(
                                  color: Color(0xff4A4B4D), fontSize: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.68,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/image/map.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      top: -190,
                      right: 0,
                      left: 0,
                      child: Image.asset("asset/image/location.png")),
                  Positioned(
                      bottom: 10,
                      right: 20,
                      child: Image.asset(
                        "asset/image/Current location target.png",
                      )),
                  Positioned(
                      top: 150,
                      left: 40,
                      child: Image.asset(
                          "asset/image/Current location address.png"))
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CommonTextfield(
                      hinttext: "Search Address",
                      prefiticon: Icon(Icons.search),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.deepOrangeAccent.shade100,
                              child: Icon(
                                Icons.star,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              "Choose a saved place",
                              style: TextStyle(
                                  color: Color(0xff4A4B4D), fontSize: 15),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
