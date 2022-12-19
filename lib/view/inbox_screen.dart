import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  List<Map<String, dynamic>> menu = [
    {"name": "MealMonkey Promotions"},
    {"name": "MealMonkey Promotions"},
    {"name": "MealMonkey Promotions"},
    {"name": "MealMonkey Promotions"},
    {"name": "MealMonkey Promotions"},
    {"name": "MealMonkey Promotions"},
  ];

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                        "Inbox",
                        style:
                            TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
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
              SizedBox(
                height: height * 0.07,
              ),
              Column(
                children: List.generate(
                    6,
                    (index) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.deepOrange,
                              ),
                              title: Text(
                                menu[index]["name"],
                                style: TextStyle(color: Color(0xff4A4B4D)),
                              ),
                              subtitle: Text(
                                "Lorem ipsum dolor sit amet, consectetur",
                                style: TextStyle(color: Color(0xffB6B7B7)),
                              ),
                              trailing: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "6th july",
                                    style: TextStyle(
                                        color: Color(0xff7C7D7E), fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.deepOrange,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                          ],
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
