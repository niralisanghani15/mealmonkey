import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  int counter = 0;

  String? dropdownValue;
  String? dropdownValue1;
  List<String> dropdownItems = ["small", "Medium", "Large", "Extra Large"];

  List<String> dropdowningredients = [
    "peprica",
    "chesse",
    "capsicm",
    "panir",
    "olives"
  ];
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                  image: AssetImage("asset/image/pizaa3.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 220, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tandoori Chicken Pizaa",
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffEE5A30),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffEE5A30),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffEE5A30),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffEE5A30),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Color(0xffEE5A30),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "4 Star Ratings",
                                      style: TextStyle(
                                          color: Color(0xffEE5A30),
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "Rs. 750",
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "/ per Portion",
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Description",
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nOrnare leo non mollis id cursus. Eu euismod faucibus in leo\nmalesuada",
                                  style: TextStyle(color: Color(0xff7C7D7E)),
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.grey.shade200,
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Customize your Order",
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Container(
                                  height: height * 0.065,
                                  width: double.infinity,
                                  color: Color(0xffF2F2F2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: DropdownButton(
                                      value: dropdownValue,
                                      underline: SizedBox(),
                                      hint: Text(
                                          "- Select the size of portion -"),
                                      icon: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 100),
                                        child: Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                      ),
                                      onChanged: (String? value) {
                                        setState(() {
                                          dropdownValue = value;
                                        });
                                      },
                                      items: dropdownItems.map((items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Container(
                                  height: height * 0.065,
                                  width: double.infinity,
                                  color: Color(0xffF2F2F2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: DropdownButton(
                                      value: dropdownValue1,
                                      underline: SizedBox(),
                                      hint: Text("- Select the ingredients -"),
                                      icon: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 100),
                                        child: Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                      ),
                                      onChanged: (String? value) {
                                        setState(() {
                                          dropdownValue1 = value;
                                        });
                                      },
                                      items: dropdowningredients.map((items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Number of Portions",
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter--;
                                            });
                                          },
                                          child: Container(
                                            height: height * 0.04,
                                            width: width * 0.13,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFC6011),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.13,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xffFC6011),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "$counter",
                                              style: TextStyle(
                                                color: Color(0xffFC6011),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter++;
                                            });
                                          },
                                          child: Container(
                                            height: height * 0.04,
                                            width: width * 0.13,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFC6011),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.2,
                                    width: width * 0.25,
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
                                padding:
                                    const EdgeInsets.only(left: 60, top: 25),
                                child: Container(
                                  height: height * 0.13,
                                  width: width * 0.78,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(40),
                                        right: Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade200,
                                            blurRadius: 2,
                                            spreadRadius: 2),
                                      ]),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Total Price",
                                        style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        "LKR 1500",
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 60),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          color: Colors.deepOrange,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset(
                                                  "asset/image/shopping.png"),
                                              Text(
                                                "Add to Cart",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                top: 0,
                                right: 20,
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
                                    Icons.shopping_cart,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: -30,
                    right: 15,
                    child: Image.asset("asset/image/fbutton.png")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
