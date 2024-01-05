import 'package:crypto_app/View/noData.dart';
import 'package:crypto_app/explore.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    Home(),
    Explore(),
    NoData(),
    NoData(),

  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xffFBC700),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (value){
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/1.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/1.2.png',
                height: myHeight * 0.03,
                color: Color(0xffFBC700),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/2.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/2.2.png',
                height: myHeight * 0.03,
                color: Color(0xffFBC700),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/3.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/3.2.png',
                height: myHeight * 0.03,
                color: Color(0xffFBC700),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/4.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/4.2.png',
                height: myHeight * 0.03,
                color: Color(0xffFBC700),
              )),

        ],
      ),
    ));
  }
}
