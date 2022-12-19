import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                            "Payment Details",
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 30),
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
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Customize your payment method",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: height * 0.25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 18,
                            offset: Offset(0, 30))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cash/Card on delivery",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Icon(
                                  Icons.done,
                                  size: 28,
                                  color: Color(0xffFC6011),
                                )
                              ],
                            )),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("asset/image/visa.png"),
                            Text(
                              "**** ****    2187",
                              style: TextStyle(
                                  color: Color(0xff4A4B4D), fontSize: 18),
                            ),
                            Container(
                              height: height * 0.05,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Color(0xffFC6011),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Delete Card",
                                  style: TextStyle(
                                    color: Color(0xffFC6011),
                                  ),
                                ),
                              ),
                            )
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
                          children: [
                            Text(
                              "Other Methods",
                              style: TextStyle(
                                  color: Color(0xff4A4B4D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: height * 0.8,
                        width: double.infinity,
                        decoration: BoxDecoration(
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
                                      borderRadius: BorderRadius.circular(40)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            color: Colors.white, fontSize: 18),
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color: Color(0xffFC6011),
                height: height * 0.07,
                minWidth: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "Add Another Credit/Debit Card",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
