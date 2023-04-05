import 'package:dilivery_app_new/Screens/StartingPages/FirstPage.dart';
import 'package:flutter/material.dart';

import 'SecondPage.dart';
import 'ThirdPage.dart';

class PageViewPage extends StatelessWidget {

  final PageController  pageController = PageController();

   List<Widget> pages = [
     FirstPage(),
     SecondPage(),
     ThirdPage(),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[ PageView(
          controller: pageController,
          children: pages,
        ),
      ]
      ),
    );
  }
}
