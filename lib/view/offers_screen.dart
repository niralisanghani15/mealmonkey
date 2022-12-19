import 'package:flutter/material.dart';

class OffersScreen extends StatefulWidget {
  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  List<Map<String, dynamic>> item = [
    {"image": "asset/image/dish.png", "name": "Café de Noires"},
    {"image": "asset/image/isso.png", "name": "Isso"},
    {"image": "asset/image/coffee.png", "name": "Cafe Beans"},
  ];
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
                        Text(
                          "Latest Offers",
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 22),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Color(0xff4A4B4D),
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Find discounts, Offers special\nmeals and more!",
                          style: TextStyle(color: Color(0xff7C7D7E)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          minWidth: width * 0.5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.deepOrange,
                          child: Text(
                            "check Offers",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2),
                            height: height * 0.25,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    item[index]["image"],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item[index]["name"],
                                  style: TextStyle(
                                      color: Color(0xff4A4B4D), fontSize: 20),
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                                      style:
                                          TextStyle(color: Color(0xffFC6011)),
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Text(
                                      "(124 ratings) Café",
                                      style:
                                          TextStyle(color: Color(0xffB6B7B7)),
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
                                      style:
                                          TextStyle(color: Color(0xffB6B7B7)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
