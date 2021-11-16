import 'package:flutter/material.dart';
import 'package:pma/screens/dashboard.dart';
import 'package:pma/screens/detail_Screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static final List<Widget> _widgetOptions = <Widget>[
    const DashBoardScreen(),
    const Text('hello'),
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
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 85,
        child: BottomNavigationBar(
          iconSize: _height * 0.018,
          backgroundColor: Colors.purple,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                size: _height * 0.035,
                color: Colors.blue,
              ),
              label: '',
              icon: Icon(
                Icons.home,
                size: _height * 0.035,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.add_circle_rounded,
                size: _height * 0.06,
                color: Colors.orange,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.account_circle,
                size: _height * 0.035,
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
      ),
    );
  }
}
