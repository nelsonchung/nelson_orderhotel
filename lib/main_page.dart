import 'package:flutter/material.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 2;  // 預設為 Home 頁面

  List<Widget> _pages = [
    Center(child: Icon(Icons.notifications, size: 100.0)),  // Alert
    Center(child: Icon(Icons.person, size: 100.0)),         // User
    HomePage(),           // Home
    Center(child: Icon(Icons.message, size: 100.0)),        // Message
    Center(child: Icon(Icons.explore, size: 100.0)),        // Explorer
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue[900],  // 選擇的項目顏色
        unselectedItemColor: Colors.grey,     // 未選擇的項目顏色
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorer',
          ),
        ],
      ),
    );
  }
}
