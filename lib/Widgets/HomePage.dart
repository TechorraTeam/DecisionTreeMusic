import 'package:flutter/material.dart';

import 'MusicBoardPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('MUSIC BOARD', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),),
          Container(
            width: 200,
            height: 50,
            child: RaisedButton(
              color: Colors.black,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MusicBoard()),
                );
              },
              child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),),
            ),
          )
        ],
      ),
    );
  }
}
