import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';
import 'package:mealmonkey/view/LoginScreen.dart';
import 'package:mealmonkey/view/pageview.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Center(
                  child: Text(
                    "Add your details to sign Up",
                    style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CommonTextfield(
                  hinttext: "Name",
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonTextfield(
                  hinttext: "Email",
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonTextfield(
                  hinttext: "Mobile no",
                  maxlength: 10,
                  keyboardtype: TextInputType.phone,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonTextfield(
                  hinttext: "Address",
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonTextfield(
                  hinttext: "Password",
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonTextfield(
                  hinttext: "Conform Password",
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonButtonScreen(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageViewScreen(),
                        ));
                  },
                  text: "Sign Up",
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(color: Color(0xff7C7D7E), fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogInScreen(),
                              ));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
