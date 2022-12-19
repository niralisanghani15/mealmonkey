import 'package:flutter/material.dart';

class CommonTextFild1 extends StatelessWidget {
  final labeltext;
  final maxlength;
  final keyboardtype;
  final bool? Obscuretext;
  const CommonTextFild1({
    Key? key,
    this.labeltext,
    this.maxlength,
    this.keyboardtype,
    this.Obscuretext,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.075,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(
          0xffF2F2F2,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextField(
        obscureText: Obscuretext!,
        keyboardType: keyboardtype,
        maxLength: maxlength,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labeltext,
          labelStyle: TextStyle(
            color: Color(0xffB6B7B7),
          ),
          counterText: "",
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        ),
      ),
    );
  }
}
