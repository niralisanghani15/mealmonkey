import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/view/Bottom_Nav_screen.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController pageController = PageController(initialPage: 0);

  int pageSelected = 0;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.75,
                width: width * 10,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      pageSelected = value;
                    });
                  },
                  children: [
                    Container(
                      height: height * 0.75,
                      width: width * 10,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            children: [
                              Image.asset(
                                  "asset/image/Find food you love vector.png"),
                              SizedBox(
                                height: height * 0.1,
                              ),
                              Text(
                                "Find Food You Love",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D), fontSize: 30),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Text(
                                "      Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep",
                                style: TextStyle(
                                    color: Color(0xff7C7D7E), fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.75,
                      width: width * 10,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            children: [
                              Image.asset("asset/image/Delivery vector.png"),
                              SizedBox(
                                height: height * 0.1,
                              ),
                              Text(
                                "Fast Delivery",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D), fontSize: 30),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Text(
                                "Fast food delivery to your home, office\n                   wherever you are",
                                style: TextStyle(
                                    color: Color(0xff7C7D7E), fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.75,
                      width: width * 10,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            children: [
                              Image.asset(
                                  "asset/image/Live tracking vector.png"),
                              SizedBox(
                                height: height * 0.1,
                              ),
                              Text(
                                "Live Tracking",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D), fontSize: 30),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Text(
                                "Real time tracking of your food on the app \n            once you placed the order",
                                style: TextStyle(
                                    color: Color(0xff7C7D7E), fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 210,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pageSelected = index;
                          });
                        },
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: pageSelected == index
                              ? Colors.orange
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CommonButtonScreen(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavScreen(),
                      ));
                },
                text: "Next",
              )),
        ],
      ),
    );
  }
}
