import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';
import 'package:mealmonkey/view/pageview.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: Text(
                  "New Password",
                  style: TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Text(
                  "    Please enter your email to receive a \nlink to  create a new password via email",
                  style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              CommonTextfield(
                hinttext: "New Password",
              ),
              SizedBox(
                height: height * 0.04,
              ),
              CommonTextfield(
                hinttext: "Conform Password",
              ),
              SizedBox(
                height: height * 0.04,
              ),
              CommonButtonScreen(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageViewScreen(),
                      ));
                },
                text: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
