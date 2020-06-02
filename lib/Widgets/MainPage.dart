import 'package:decision_tree_music/Widgets/AboutUsPage.dart';
import 'package:decision_tree_music/Widgets/HomePage.dart';
import 'package:decision_tree_music/Widgets/HowItWorksPage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AboutUsScreen(),
    HowItWorksScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Music Board', style: TextStyle(color: Colors.white,fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 10,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            title: Text('ABOUT US'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('HOW IT WORKS'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
