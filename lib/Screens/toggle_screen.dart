import 'package:flutter/material.dart';
import 'Home_Screen.dart';
import './favorite_screen.dart';

class toggle_screen extends StatefulWidget {
  const toggle_screen({Key? key}) : super(key: key);

  @override
  _toggle_screenState createState() => _toggle_screenState();
}

class _toggle_screenState extends State<toggle_screen> {
  int _currentIndex = 0;
  late List<Map<String, dynamic>> _pages;
  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'title': 'My shop',
        'page': HomeScreen(),
      },
      {
        'title': 'favorites',
        'page': favorite_screen(),
      },
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_currentIndex]['title']),
      ),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
