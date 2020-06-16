import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:covid/Tabs/precaution.dart';
import 'package:covid/Tabs/stats.dart';
import 'package:covid/Tabs/symptoms.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 1;
  final Precaution p = Precaution();
  final Stats s = Stats();
  final Symptoms sy = Symptoms();
  Widget showPage = Stats();
  pageChoice(int page) {
    switch (page) {
      case 0:
        return sy;
        break;
      case 1:
        return s;
        break;
      case 2:
        return p;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          height: 57.0,
          items: <Widget>[
            Tab(
              icon: Image.asset(
                'images/symptoms.png',
                height: 35,
                width: 35,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Image.asset(
                'images/stats.png',
                height: 33,
                width: 33,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Image.asset(
                'images/prevention.png',
                height: 35,
                width: 35,
                color: Colors.blue,
              ),
            ),
          ],
          color: Colors.grey[100],
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationCurve: Curves.ease,
          animationDuration: Duration(milliseconds: 200),
          onTap: (int tappedIndex) {
            setState(() {
              showPage = pageChoice(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: showPage,
        ));
  }
}
