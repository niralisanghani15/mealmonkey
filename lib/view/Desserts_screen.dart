import 'package:flutter/material.dart';
import 'package:mealmonkey/view/Details_screen.dart';

import '../common_widget/common_textfield.dart';

class Dessertsscreen extends StatefulWidget {
  @override
  _DessertsscreenState createState() => _DessertsscreenState();
}

class _DessertsscreenState extends State<Dessertsscreen> {
  List<Map<String, dynamic>> item = [
    {
      "image": "asset/image/desserts1.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "name1": "Minute by tuk tuk"
    },
    {
      "image": "asset/image/desserts2.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.7",
      "name1": "Cakes by Tella"
    },
    {
      "image": "asset/image/desserts3.png",
      "name": "Street shake",
      "rate": "4.9",
      "name1": "Cafe Racer"
    },
    {
      "image": "asset/image/desserts4.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "name1": "Minute by tuk tuk"
    },
  ];
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                              "Desserts",
                              style: TextStyle(
                                  color: Color(0xff4A4B4D), fontSize: 30),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Color(0xff4A4B4D),
                          size: 30,
                        )
                      ],
                    ),
                    CommonTextfield(
                      hinttext: "Search food",
                      prefiticon: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          index == 0
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(),
                                  ))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SizedBox(),
                                  ));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          height: height * 0.3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(item[index]["image"]),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  item[index]["name"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.deepOrange,
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      item[index]["rate"],
                                      style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      item[index]["name1"],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.deepOrange,
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      "Desserts",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
