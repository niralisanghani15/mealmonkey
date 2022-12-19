import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/common_widget/common_textfield.dart';
import 'package:mealmonkey/view/Otp_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: Text(
                  "   Please enter your email to receive a  \nlink to  create a new password via email",
                  style: TextStyle(color: Color(0xff7C7D7E), fontSize: 15),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              CommonTextfield(
                hinttext: "Email",
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CommonButtonScreen(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpScreen(),
                      ));
                },
                text: "Send",
              )
            ],
          ),
        ),
      ),
    );
  }
}
