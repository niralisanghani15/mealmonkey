import 'package:flutter/material.dart';
import 'package:mealmonkey/common_widget/Common_button.dart';
import 'package:mealmonkey/view/NewPassword.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                "We have sent an OTP to\n           your Mobile",
                style: TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Center(
              child: Text(
                "Please check your mobile number 071*****12\n           continue to reset your password",
                style: TextStyle(color: Color(0xff7C7D7E), fontSize: 15),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            OTPTextField(
              length: 4,
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              obscureText: true,
              otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Color(0xffF2F2F2),
                  focusBorderColor: Colors.grey,
                  enabledBorderColor: Colors.white),
              width: MediaQuery.of(context).size.width,
              fieldWidth: 65,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: height * 0.06,
            ),
            CommonButtonScreen(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordScreen(),
                    ));
              },
              text: "Next",
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't Receive? ",
                  style: TextStyle(color: Color(0xff7C7D7E), fontSize: 16),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Clik Here",
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
    );
  }
}
