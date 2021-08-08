import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:fasf_fashion/ml/Object.dart';
import 'package:fasf_fashion/pages/cards.dart';
import 'package:fasf_fashion/pages/home.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MyHomePage(),
    ObjectDetect(cameras)
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF549baf),
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,

        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xff9dc6fb),
        // animationDuration: Duration(seconds: 1),
        // animationCurve: Curves.easeInOut,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Color(0xff9dc6fb),
          ),
          Icon(
            Icons.shop,
            size: 20,
            color: Color(0xff9dc6fb),
          ),
          Icon(
            Icons.camera,
            size: 20,
            color: Color(0xff9dc6fb),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
