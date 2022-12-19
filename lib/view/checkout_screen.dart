import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  bool isSwitched = false;
  int groupValue = -1;
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
                            "Checkout",
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
                      Text(
                        "Delivery Address",
                        style: TextStyle(color: Color(0xff7C7D7E)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "653 Nostrand Ave., ",
                            style: TextStyle(
                                color: Color(0xff4A4B4D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            "Brooklyn, NY 11216",
                            style: TextStyle(
                                color: Color(0xff4A4B4D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change",
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment method",
                        style: TextStyle(
                          color: Color(0xff7C7D7E),
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: height * 0.8,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.close),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Add Credit/Debit Card",
                                              style: TextStyle(
                                                  color: Color(0xff4A4B4D),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        CommonTextfield(
                                          hinttext: "Card Number",
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Expiry",
                                              style: TextStyle(
                                                color: Color(0xff4A4B4D),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.1,
                                            ),
                                            Expanded(
                                              child: CommonTextfield(
                                                hinttext: "MM",
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.1,
                                            ),
                                            Expanded(
                                              child: CommonTextfield(
                                                hinttext: "YY",
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        CommonTextfield(
                                          hinttext: "Security Code",
                                        ),
                                        SizedBox(
                                          height: height * 0.025,
                                        ),
                                        CommonTextfield(
                                          hinttext: "First Name",
                                        ),
                                        SizedBox(
                                          height: height * 0.025,
                                        ),
                                        CommonTextfield(
                                          hinttext: "Last Name",
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("You can remove this card"),
                                            Switch.adaptive(
                                                value: isSwitched,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isSwitched = value;
                                                  });
                                                })
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.06,
                                        ),
                                        MaterialButton(
                                          color: Colors.deepOrange,
                                          height: height * 0.07,
                                          minWidth: double.infinity,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: width * 0.1,
                                              ),
                                              Text(
                                                "Add Card",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.06,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          "+ Add Card",
                          style: TextStyle(color: Color(0xffFC6011)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Cash on delivery"),
                              Radio(
                                  value: 1,
                                  groupValue: groupValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      groupValue = value!;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("asset/image/visa.png"),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text("**** **** 2187"),
                                ],
                              ),
                              Radio(
                                  value: 2,
                                  groupValue: groupValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      groupValue = value!;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("asset/image/peper.png"),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text("johndoe@email.com"),
                                ],
                              ),
                              Radio(
                                  value: 3,
                                  groupValue: groupValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      groupValue = value!;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.shade200,
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
                        "Sub Total",
                        style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "\$68",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Cost",
                        style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "\$2",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount",
                        style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "-\$4",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "-\$66",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            CommonButtonScreen(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 0.8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ],
                              ),
                              Image.asset("asset/image/last.png"),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "Thank You!",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "for your order",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                " Your Order is now being processed. We will let you\nknow once the order is picked from the outlet. Check\n                          the status of your Order",
                                style: TextStyle(
                                  color: Color(0xff4A4B4D),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              CommonButtonScreen(
                                onTap: () {},
                                text: "Track My Order",
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Back to Home",
                                  style: TextStyle(
                                      color: Color(0xff4A4B4D),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              text: "Send Order",
            )
          ],
        ),
      ),
    );
  }
}
