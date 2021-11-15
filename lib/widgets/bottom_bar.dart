import 'package:flutter/material.dart';
import 'package:pma/screens/dashboard.dart';
import 'package:pma/screens/detail_Screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static List<Widget> _widgetOptions = <Widget>[
    const DashBoardScreen(),
    Container(
      child: Text('hello'),
    ),
    const DetailScreen(),
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
      backgroundColor: Colors.purple,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 16,
        backgroundColor: Colors.purple,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 25,
              color: Colors.blue,
            ),
            label: '',
            icon: Icon(
              Icons.home,
              size: 25,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.add_circle_rounded,
              size: 55,
              color: Colors.orange,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.account_circle,
              size: 25,
              color: Colors.blue,
            ),
            label: '',
            icon: Icon(
              Icons.account_circle,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
