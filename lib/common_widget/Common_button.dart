import 'package:flutter/material.dart';

class CommonButtonScreen extends StatelessWidget {
  final text;
  final VoidCallback onTap;

  const CommonButtonScreen({
    Key? key,
    this.text,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      color: Color(0xffFC6011),
      height: height * 0.08,
      minWidth: width * 0.9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    );
  }
}
