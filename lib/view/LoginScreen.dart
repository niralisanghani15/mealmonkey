import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';
import 'package:mealmonkey/view/Reset_password.dart';
import 'package:mealmonkey/view/Signupscreen.dart';
import 'package:mealmonkey/view/pageview.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                    "Login",
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Center(
                  child: Text(
                    "Add your details to login",
                    style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CommonTextfield(hinttext: "your Email"),
                SizedBox(
                  height: height * 0.03,
                ),
                CommonTextfield(hinttext: "Password"),
                SizedBox(
                  height: height * 0.03,
                ),
                MaterialButton(
                  height: height * 0.07,
                  minWidth: width * 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Color(0xffFC6011),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageViewScreen(),
                        ));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen(),
                          ));
                    },
                    child: Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                          color: Color(0xff7C7D7E),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    )),
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Text(
                    "or Login With",
                    style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                MaterialButton(
                  height: height * 0.07,
                  minWidth: width * 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Color(0xff367FC0),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/image/facebook-letter-logo.png"),
                      SizedBox(
                        width: width * 0.09,
                      ),
                      Text(
                        "Login with Facebook",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                MaterialButton(
                  height: height * 0.07,
                  minWidth: width * 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Color(0xffDD4B39),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/image/google-plus-logo.png"),
                      SizedBox(
                        width: width * 0.09,
                      ),
                      Text(
                        "Login With Google",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(color: Color(0xff7C7D7E), fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ));
                        },
                        child: Text(
                          "Sign Up",
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
