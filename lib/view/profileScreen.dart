import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/common_widget/common_textfild1.dart';

import 'change_add_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Profile",
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
                  height: height * 0.05,
                ),
                Image.asset("asset/image/Profile.png"),
                SizedBox(
                  height: height * 0.01,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => changeAddScreen(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Color(0xffFC6011),
                          size: 20,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                Text(
                  "Hi there Emilia!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CommonTextFild1(
                  labeltext: "Name",
                  Obscuretext: false,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CommonTextFild1(
                  labeltext: "Email",
                  Obscuretext: false,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CommonTextFild1(
                  labeltext: "Mobile No",
                  keyboardtype: TextInputType.phone,
                  maxlength: 10,
                  Obscuretext: false,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CommonTextFild1(
                  labeltext: "Addreess",
                  Obscuretext: false,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CommonTextFild1(
                  labeltext: "Password",
                  Obscuretext: true,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CommonTextFild1(
                  labeltext: "Confirm Password",
                  Obscuretext: true,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CommonButtonScreen(
                  onTap: () {},
                  text: "Save",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
