import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';
import 'package:mealmonkey/view/Desserts_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<Map<String, dynamic>> item = [
    {"image": "asset/image/item1.png", "name": "Food", "items": "120 items"},
    {
      "image": "asset/image/item2.png",
      "name": "Beverages",
      "items": "220 items"
    },
    {
      "image": "asset/image/item3.png",
      "name": "Desserts",
      "items": "155 items"
    },
    {
      "image": "asset/image/item4.png",
      "name": "Promotions",
      "items": "25 items"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu",
                        style:
                            TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Color(0xff4A4B4D),
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  CommonTextfield(
                    hinttext: "Search food",
                    prefiticon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.65,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            color: Color(0xffFC6011),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 10),
                      child: Column(
                        children: List.generate(
                            4,
                            (index) => Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        index == 2
                                            ? Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Dessertsscreen(),
                                                ))
                                            : Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SizedBox(),
                                                ));
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        height: height * 0.13,
                                        width: width * 0.78,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.horizontal(
                                              left: Radius.circular(40),
                                              right: Radius.circular(10),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.shade200,
                                                  blurRadius: 2,
                                                  spreadRadius: 2),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: width * 0.13,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: width * 0.4,
                                                ),
                                                Text(
                                                  item[index]["name"],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: height * 0.005,
                                                ),
                                                Text(
                                                  item[index]["items"],
                                                  style: TextStyle(
                                                    color: Color(0xffB6B7B7),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: -60,
                                      child: Image.asset(
                                        item[index]["image"],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      top: 0,
                                      right: -20,
                                      child: Container(
                                        height: height * 0.07,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  blurRadius: 2,
                                                  spreadRadius: 2,
                                                  offset: Offset(2, 2))
                                            ],
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.deepOrange,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
