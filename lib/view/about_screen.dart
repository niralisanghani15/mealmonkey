import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        "About Us",
                        style:
                            TextStyle(color: Color(0xff4A4B4D), fontSize: 30),
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
                height: height * 0.08,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.deepOrange,
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut\naliquip ex ea commodo consequat. Duis aute irure\ndolor in reprehenderit in voluptate velit esse cillum\ndolore eu fugiat nulla pariatur. Excepteur sint\noccaecat cupidatat non proident, sunt in culpa qui\nofficia deserunt mollit anim id est laborum.",
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.deepOrange,
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut\naliquip ex ea commodo consequat. Duis aute irure\ndolor in reprehenderit in voluptate velit esse cillum\ndolore eu fugiat nulla pariatur. Excepteur sint\noccaecat cupidatat non proident, sunt in culpa qui\nofficia deserunt mollit anim id est laborum.",
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.deepOrange,
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud ",
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
