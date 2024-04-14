import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/pages/car_menu.dart';
import 'package:tesla/pages/charging_page.dart';
import 'package:tesla/pages/diagnosis_page.dart';
import 'package:tesla/pages/weather_page.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  int currentIndex = 0;
  final PageController pageController = PageController();
  final List<Widget> _pages = const <Widget>[
    CarMenu(),
    WeatherPage(),
    ChargingPage(),
    DiagnosisPage()
  ];

  void nextPage(int index) {
    currentIndex = index;
    // pageController.animateToPage(currentIndex, duration: const Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    pageController.jumpToPage(currentIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: PageView(
          controller: pageController,
          onPageChanged: nextPage,
          children: _pages,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple,
          child: const Icon(
            CupertinoIcons.power,
            size: 35,
          ),
        ),
        bottomNavigationBar: Material(
          color: Colors.grey.shade900,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            fixedColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.grey.shade900,
            onTap: nextPage,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.grey.shade900,
                icon: const Icon(
                  CupertinoIcons.car_detailed,
                  size: 30,
                ),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.arrow_branch,
                  size: 30,
                ),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.charging_station,
                  size: 30,
                ),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.profile_circled,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
