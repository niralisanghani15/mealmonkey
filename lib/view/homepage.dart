import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';

class HomePagescreen extends StatefulWidget {
  @override
  _HomePagescreenState createState() => _HomePagescreenState();
}

class _HomePagescreenState extends State<HomePagescreen> {
  List<Map<String, dynamic>> menu = [
    {"image": "asset/image/burger.png", "name": "offers"},
    {"image": "asset/image/sriLankan.png", "name": "Sri Lankan"},
    {"image": "asset/image/italian.png", "name": "Italian"},
    {
      "image": "asset/image/shreyak-singh-0j4bisyPo3M-unsplash.png",
      "name": "indian"
    },
  ];

  List<Map<String, dynamic>> menu1 = [
    {"image": "asset/image/pizaa.png", "name": "Minute by tuk tuk"},
    {"image": "asset/image/dish.png", "name": "Café de Noir"},
    {"image": "asset/image/food1.png", "name": "Bakes by Tella"},
  ];
  List<Map<String, dynamic>> menu2 = [
    {"image": "asset/image/pizaa1.png", "name": "Café De Bambaa"},
    {"image": "asset/image/burger1.png", "name": "Burger by Bella"},
  ];
  List<Map<String, dynamic>> menu3 = [
    {
      "image": "asset/image/pizaa2.png",
      "name": "Mulberry Pizza by Josh",
      "type": "Western Food"
    },
    {"image": "asset/image/barita.png", "name": "Barita", "type": "Coffee"},
    {
      "image": "asset/image/pizaarush.png",
      "name": "Pizza Rush Hour",
      "type": "Italian Food"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Good morning Akila!",
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 25),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Delivering to",
                          style: TextStyle(color: Color(0xffB6B7B7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style:
                              TextStyle(color: Color(0xff7C7D7E), fontSize: 20),
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Image.asset("asset/image/Group 6819.png"),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    CommonTextfield(
                      hinttext: "Search food",
                      prefiticon: Icon(Icons.search),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      height: height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: height * 0.11,
                                width: width * 0.21,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        menu[index]["image"],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                menu[index]["name"],
                                style: TextStyle(color: Color(0xff4A4B4D)),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurents",
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 18),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
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
                                  menu1[index]["image"],
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
                                menu1[index]["name"],
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
                                    style: TextStyle(color: Color(0xffFC6011)),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    "(124 ratings) Café",
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
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Restaurents",
                        style:
                            TextStyle(color: Color(0xff4A4B4D), fontSize: 18),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.23,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: height * 0.16,
                            width: width * 0.55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                    menu2[index]["image"],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menu2[index]["name"],
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Café",
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
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
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
                                ],
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Items",
                        style:
                            TextStyle(color: Color(0xff4A4B4D), fontSize: 25),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          height: height * 0.11,
                          width: width * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(
                                  menu3[index]["image"],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              menu3[index]["name"],
                              style: TextStyle(
                                  color: Color(0xff4A4B4D),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: height * 0.006,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Café",
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
                                  "${menu3[index]["type"]}",
                                  style: TextStyle(color: Color(0xffB6B7B7)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.006,
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
                            )
                          ],
                        )
                      ],
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
