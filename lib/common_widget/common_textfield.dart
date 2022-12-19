import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  final hinttext;
  final maxlength;
  final keyboardtype;
  final prefiticon;

  const CommonTextfield({
    Key? key,
    this.hinttext,
    this.maxlength,
    this.keyboardtype,
    this.prefiticon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardtype,
      maxLength: maxlength,
      decoration: InputDecoration(
        prefixIcon: prefiticon,
        counterText: "",
        fillColor: Color(0xffF2F2F2),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        border: InputBorder.none,
        hintText: hinttext,
        labelStyle: TextStyle(color: Color(0xffB6B7B7)),
        hintStyle: TextStyle(
          color: Color(0xff7C7D7E),
        ),
      ),
    );
  }
}
