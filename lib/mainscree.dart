import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'screens/homescreen.dart';
import 'screens/profilescreen.dart';
import 'screens/searchscreen.dart';
import 'screens/settingscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentindex = 0;
  List widgetscreen = const [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetscreen[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
          selectedItemColor: Color(0xff5767ea),
          unselectedItemColor: Color.fromARGB(255, 38, 42, 78),
          type: BottomNavigationBarType.fixed,
          elevation: 1,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                size: 20.sp,
                Icons.home,
                color: const Color(0xff5767ea),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: 20.sp,
                Icons.search,
                color: Color(0xff5767ea),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: 20.sp,
                Icons.person,
                color: Color(0xff5767ea),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: 20.sp,
                Icons.settings,
                color: Color(0xff5767ea),
              ),
              label: 'Settings',
            ),
          ]),
    );
  }
}
