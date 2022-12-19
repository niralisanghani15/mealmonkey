import 'package:flutter/material.dart';
import 'package:mealmonkey/view/Payment_screen.dart';
import 'package:mealmonkey/view/about_screen.dart';
import 'package:mealmonkey/view/inbox_screen.dart';
import 'package:mealmonkey/view/notification_Screen.dart';
import 'package:mealmonkey/view/order_screen.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  List<Map<String, dynamic>> menu = [
    {"image": "asset/image/image1.png", "name": "Payment Details"},
    {"image": "asset/image/image2.png", "name": "My Order"},
    {"image": "asset/image/image3.png", "name": "Notification"},
    {"image": "asset/image/image4.png", "name": "Inbox"},
    {"image": "asset/image/image5.png", "name": "About Us"},
  ];
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More",
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 25),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Color(0xff4A4B4D),
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        GestureDetector(
                          onTap: () {
                            index == 0
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PaymentScreen(),
                                    ))
                                : index == 1
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => OrderScreen(),
                                        ))
                                    : index == 2
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  NotificationScreen(),
                                            ))
                                        : index == 3
                                            ? Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      InboxScreen(),
                                                ))
                                            : index == 4
                                                ? Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          AboutScreen(),
                                                    ))
                                                : Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          SizedBox(),
                                                    ));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: height * 0.11,
                            width: double.infinity,
                            //  width: width * 0.85,
                            decoration: BoxDecoration(
                              color: Color(0xffF6F6F6),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xffD8D8D8),
                                    child: Image.asset(
                                      menu[index]["image"],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.04,
                                  ),
                                  Text(
                                    menu[index]["name"],
                                    style: TextStyle(color: Color(0xff4A4B4D)),
                                  )
                                ],
                              ),
                            ),
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
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
