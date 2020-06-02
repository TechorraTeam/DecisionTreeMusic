import 'package:decision_tree_music/Widgets/HomePage.dart';
import 'package:decision_tree_music/Widgets/MainPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Board',
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: MainScreen(),
    );
  }
}

