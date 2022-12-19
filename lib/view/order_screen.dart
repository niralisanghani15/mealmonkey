import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/view/checkout_screen.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  List<Map<String, dynamic>> menu = [
    {"name": "Beef Burger x1", "price": "\$16"},
    {"name": "Classic Burger x1", "price": "\$14"},
    {"name": "Cheese Chicken Burger x1", "price": "\$17"},
    {"name": "Chicken Legs Basket x1", "price": "\$15"},
    {"name": "French Fries Large x1", "price": "\$6"},
  ];
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
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
                            "My Order",
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
                  Row(
                    children: [
                      Image.asset("asset/image/burger1.png"),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "King Burgers",
                            style: TextStyle(
                                color: Color(0xff4A4B4D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(color: Color(0xffFC6011)),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "(124 ratings)",
                                style: TextStyle(color: Color(0xffB6B7B7)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Eurger",
                                style: TextStyle(color: Color(0xffB6B7B7)),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Color(0xffFC6011),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "Western Food",
                                style: TextStyle(color: Color(0xffB6B7B7)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.deepOrange,
                              ),
                              Text(
                                "No 03, 4th Lane, Newyork",
                                style: TextStyle(
                                  color: Color(0xffB6B7B7),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.35,
              width: double.infinity,
              color: Color(0xffF6F6F6),
              child: Column(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    menu[index]["name"],
                                    style: TextStyle(
                                        color: Color(0xff4A4B4D), fontSize: 16),
                                  ),
                                  Text(
                                    menu[index]["price"],
                                    style: TextStyle(
                                        color: Color(0xff4A4B4D),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              )
                            ],
                          ),
                        )),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Instrusctions",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "+ Add Notes",
                          style: TextStyle(color: Color(0xffFC6011)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Total",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$68",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Cost",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$68",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$70",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CommonButtonScreen(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckOutScreen(),
                          ));
                    },
                    text: "Checkout",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
