import 'package:flutter/material.dart';
import 'package:mealmonkey/view/Menuscreen.dart';
import 'package:mealmonkey/view/more_screen.dart';
import 'package:mealmonkey/view/offers_screen.dart';
import 'package:mealmonkey/view/profileScreen.dart';

import 'homepage.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Map<String, dynamic>> Iconsitem = [
    {"icon": Icons.grid_view, "label": "Menu"},
    {"icon": Icons.local_offer_sharp, "label": "Offers"},
    {"icon": Icons.person, "label": "Profile"},
    {"icon": Icons.menu_open, "label": "More"},
  ];
  List<Widget> Screens = [
    MenuScreen(),
    OffersScreen(),
    ProfileScreen(),
    MoreScreen(),
    HomePagescreen(),
  ];
  int pageSelected = 4;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Screens[pageSelected],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          setState(() {
            pageSelected = 4;
          });
        },
        backgroundColor: pageSelected == 4 ? Colors.deepOrange : Colors.grey,
        child: Icon(
          Icons.home,
          color: Colors.white,
          size: 30,
        ),
      ),
      bottomNavigationBar: Container(
        height: height * 0.1,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 2),
          ],
        ),
        child: BottomAppBar(
          notchMargin: 12,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                4,
                (index) => Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              pageSelected = index;
                            });
                          },
                          icon: Icon(
                            Iconsitem[index]["icon"],
                            color: pageSelected == index
                                ? Colors.deepOrange
                                : Colors.grey,
                          ),
                        ),
                        Text(Iconsitem[index]["label"])
                      ],
                    )),
          ),
        ),
      ),
    );
  }
}
