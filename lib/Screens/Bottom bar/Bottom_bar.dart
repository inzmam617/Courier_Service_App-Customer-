import 'package:dilivery_app_new/Screens/Account/account.dart';
import 'package:dilivery_app_new/Screens/History/history.dart';
import 'package:dilivery_app_new/Screens/Track_Order/track_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../HomeScreens/HomeScreen.dart';
import '../Message/message.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({Key? key}) : super(key: key);

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    account(),
    track_order(),
    messages(),
    history(),
    Text(
      'Index 1: Profile',
      // style: optionStyle,
    ),
    Text(
      'Index 2: Map',
      // style: optionStyle,
    ),
    Text(
      'Index 3: Chat',
      // style: optionStyle,
    ),
    Text(
      'Index 4: History',
      // style: optionStyle,
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
          height: 70,
          color: Colors.black,
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/Iconly-Broken-Home.svg"),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/Iconly-Broken-Profile.svg"),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/437-4370097_hope-icons-location-facebook-check-in-symbol.png",fit: BoxFit.scaleDown,
                  height: 30,
                  // width: 30,
                ),
                label: 'Map',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/chat.svg"),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/Time.svg"),
                label: 'History',
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
