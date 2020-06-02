import 'package:decision_tree_music/Models/SongModel.dart';
import 'package:flutter/material.dart';

import 'MusicBoardPage.dart';

class FinalResults extends StatefulWidget {
  @override
  _FinalResultsState createState() => _FinalResultsState();
}

class _FinalResultsState extends State<FinalResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected: $finalAnswer'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
          finalResults = [];
          finalSongNames = [];
            Navigator.pop(context);
          },),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (BuildContext ctxt, int Index) {
      return Card(elevation: 10, child: ListTile(
        leading: CircleAvatar(backgroundColor: Colors.black54, child: Text(finalResults[Index][0], style: TextStyle(color: Colors.white),),),
        title: Text(finalResults[Index], style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
        subtitle: Text(finalSongNames[Index], style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
      ));
      }, itemCount: finalResults.length)
      ),
    );
  }
}
