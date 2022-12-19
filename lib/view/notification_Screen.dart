import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> notification = [
    {"note": "Your orders has been picked up", "time": "Now"},
    {"note": "Your order has been delivered", "time": "1 h ago"},
    {"note": "Lorem ipsum dolor sit amet, consectetur ", "time": "3 h ago"},
    {"note": "Lorem ipsum dolor sit amet, consectetur ", "time": "5 h ago"},
    {"note": "Lorem ipsum dolor sit amet, consectetur ", "time": "05 Sep 2020"},
    {"note": "Lorem ipsum dolor sit amet, consectetur ", "time": "12 Aug 2020"},
    {"note": "Lorem ipsum dolor sit amet, consectetur ", "time": "20 Jul 2020"},
    {"note": "Lorem ipsum dolor sit amet, consectetur ", "time": "12 Jul 2020"},
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                          "Notification",
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
                  height: height * 0.06,
                ),
                Column(
                  children: List.generate(
                    8,
                    (index) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.deepOrange,
                          ),
                          title: Text(
                            notification[index]["note"],
                            style: TextStyle(color: Color(0xff4A4B4D)),
                          ),
                          subtitle: Text(
                            notification[index]["time"],
                            style: TextStyle(color: Color(0xffB6B7B7)),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
