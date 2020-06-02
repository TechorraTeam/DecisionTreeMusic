import 'package:decision_tree_music/Models/SongModel.dart';
import 'package:flutter/material.dart';

import 'FinalResultsPage.dart';

String finalAnswer = '';
int qtIndex = 0, lastIndex = 0;
bool showResult = false;

final questions = const [
  {
    'questionText': 'What genre would you like to listen to?',
    'answers': [
      {'ans': 'Hip-Hop'},
      {'ans': 'RnB'},
      {'ans': 'Jazz'},
    ],
  },
  {
    'questionText': 'What sub-genre would you like to listen to?',
    'answers': [
      {'Hip-Hop': [
        {'ans': 'Trap'},
        {'ans': 'Conscious'},
        {'ans': 'Alternative'}
        ]},
      {'RnB': [{'ans': 'Old School'}, {'ans': 'Pop'}, {'ans': 'Dark'}]},
      {'Jazz': [{'ans': 'Modern Jazz'}, {'ans': 'Blues'}, {'ans': 'Cool Jazz'}]},
    ],
  },
  {
    'questionText': 'What artist represents the vibe you are going for?',
    'answers': [
      {'Trap': [{'ans': 'Chainz'}, {'ans': 'Lil Uzi vert'}, {'ans': 'Chief Keef'}]},
      {'Conscious': [{'ans': 'Kendrick Lamar'}, {'ans': 'Nas'}, {'ans': 'Common'}]},
      {'Alternative': [{'ans': 'A tribe called quest'}, {'ans': 'Saba'}, {'ans': 'ASAP Rocky'}]},
      {'Old School': [{'ans': 'Destiny’s Child'}, {'ans': 'Boyz to Men'}, {'ans': 'R Kelly'}]},
      {'Pop': [{'ans': 'Mariah Carey'}, {'ans': 'The Weekend'}, {'ans': 'Beyonce'}]},
      {'Dark': [{'ans': '6lack'}, {'ans': 'Roy woods'}, {'ans': 'Daniel Caesar'}]},
      {'Modern Jazz': [{'ans': 'Brad Mehldau'}, {'ans': 'Avishai Cohen'}, {'ans': 'Madeleine Peyroux'}]},
      {'Blues': [{'ans': 'Bessie Smith'}, {'ans': 'Robben Ford'}, {'ans': 'BB King'}]},
      {'Cool Jazz': [{'ans': 'Lester Young'}, {'ans': 'Chet Baker'}, {'ans': 'The Lighthouse All-Stars'}]},

    ],
  },
];



var ans1 = questions[0]['answers'] as List<Map<String,Object>>;

var ans2 = questions[1]['answers'] as List<Map<String,Object>>;
var ans3 = questions[2]['answers'] as List<Map<String,Object>>;

var ans21 = ans2[0]['Hip-Hop'] as List<Map<String,Object>>;
var ans22 = ans2[1]['RnB'] as List<Map<String,Object>>;
var ans23 = ans2[2]['Jazz'] as List<Map<String,Object>>;

var ans311 = ans3[0]['Trap'] as List<Map<String,Object>>;
var ans321 = ans3[1]['Conscious'] as List<Map<String,Object>>;
var ans331 = ans3[2]['Alternative'] as List<Map<String,Object>>;
var ans312 = ans3[3]['Old School'] as List<Map<String,Object>>;
var ans322 = ans3[4]['Pop'] as List<Map<String,Object>>;
var ans332 = ans3[5]['Dark'] as List<Map<String,Object>>;
var ans313 = ans3[6]['Modern Jazz'] as List<Map<String,Object>>;
var ans323 = ans3[7]['Blues'] as List<Map<String,Object>>;
var ans333 = ans3[8]['Cool Jazz'] as List<Map<String,Object>>;

String ans1stPlace = ans1[0]['ans'], ans2ndPlace = ans1[1]['ans'], ans3rdPlace = ans1[2]['ans'];

class MusicBoard extends StatefulWidget {
  @override
  _MusicBoardState createState() => _MusicBoardState();
}

class _MusicBoardState extends State<MusicBoard> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      resetAll();
    });
  }
  @override
  Widget build(BuildContext context) {
    var qtns = questions[qtIndex]['questionText'];
    qtIndex > 0? showResult = true: showResult = false;

    return Scaffold(
        appBar: AppBar(title: Text(finalAnswer),),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(qtns, style: TextStyle(fontSize: 25, color: Colors.brown[800], fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                Container(
                  width: 350,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.black54,
                    child: Text(ans1stPlace, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                    onPressed: (){
                      setState(() {
                        finalAnswer = ans1stPlace;

                        if(qtIndex == 0) {
                          ans1stPlace = ans21[0]['ans'];
                          ans2ndPlace = ans21[1]['ans'];
                          ans3rdPlace = ans21[2]['ans'];

                        }
                        else if (qtIndex == 1) {
                          if (lastIndex == 1){
                            ans1stPlace = ans311[0]['ans'];
                            ans2ndPlace = ans311[1]['ans'];
                            ans3rdPlace = ans311[2]['ans'];
                          } else if (lastIndex == 2){
                            ans1stPlace = ans312[0]['ans'];
                            ans2ndPlace = ans312[1]['ans'];
                            ans3rdPlace = ans312[2]['ans'];
                          } else if (lastIndex == 3){
                            ans1stPlace = ans313[0]['ans'];
                            ans2ndPlace = ans313[1]['ans'];
                            ans3rdPlace = ans313[2]['ans'];
                          }
                        }
                        if(qtIndex<2)
                          qtIndex += 1;

                        lastIndex = 1;
                      });

                    },
                  ),
                ),
                Container(
                  width: 350,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.black54,
                    child: Text(ans2ndPlace, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                    onPressed: (){
                      setState(() {
                        finalAnswer = ans2ndPlace;

                        if(qtIndex == 0) {
                          ans1stPlace = ans22[0]['ans'];
                          ans2ndPlace = ans22[1]['ans'];
                          ans3rdPlace = ans22[2]['ans'];
                        }
                        else if (qtIndex == 1) {
                          if(lastIndex == 1){
                            ans1stPlace = ans321[0]['ans'];
                            ans2ndPlace = ans321[1]['ans'];
                            ans3rdPlace = ans321[2]['ans'];
                          } else if (lastIndex == 2){
                            ans1stPlace = ans322[0]['ans'];
                            ans2ndPlace = ans322[1]['ans'];
                            ans3rdPlace = ans322[2]['ans'];
                          } else if (lastIndex == 3){
                            ans1stPlace = ans323[0]['ans'];
                            ans2ndPlace = ans323[1]['ans'];
                            ans3rdPlace = ans323[2]['ans'];
                          }

                        }
                        else if (qtIndex == 2) {
                          //finalAnswer = ans1stPlace;
                          /*
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FinalResults()),
                          );
                           */
                        }
                        if(qtIndex<2)
                          qtIndex += 1;

                        lastIndex = 2;
                      });
                    },
                  ),
                ),
                Container(
                  width: 350,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.black54,
                    child: Text(ans3rdPlace, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                    onPressed: (){
                      setState(() {
                        finalAnswer = ans3rdPlace;
                        if(qtIndex == 0) {
                          ans1stPlace = ans23[0]['ans'];
                          ans2ndPlace = ans23[1]['ans'];
                          ans3rdPlace = ans23[2]['ans'];
                        }
                        else if (qtIndex == 1) {
                          if (lastIndex == 1)
                          {
                            ans1stPlace = ans331[0]['ans'];
                            ans2ndPlace = ans331[1]['ans'];
                            ans3rdPlace = ans331[2]['ans'];
                          } else if (lastIndex == 2) {
                            ans1stPlace = ans332[0]['ans'];
                            ans2ndPlace = ans332[1]['ans'];
                            ans3rdPlace = ans332[2]['ans'];
                          } else if (lastIndex == 3) {
                            ans1stPlace = ans333[0]['ans'];
                            ans2ndPlace = ans333[1]['ans'];
                            ans3rdPlace = ans333[2]['ans'];
                          }

                        }
                        else if (qtIndex == 2) {
                          //finalAnswer = ans1stPlace;
                          /*
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FinalResults()),
                          );
                           */
                        }
                        if(qtIndex<2)
                          qtIndex += 1;

                        lastIndex = 3;
                      });
                    },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.black54,
                        child: Text('Reset', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                        onPressed: (){
                          setState(() {
                            resetAll();
                          });
                        },
                      ),
                    ),
                    showResult ? Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.black54,
                        child: Text('Results', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                        onPressed: (){
                          print(finalAnswer);
                          finalOutput();
                          Navigator.push(context,MaterialPageRoute(builder: (context) => FinalResults()),);
                      },),
                    ): Container()
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}

void resetAll ()
{
  qtIndex = 0;
  ans1stPlace = ans1[0]['ans'];
  ans2ndPlace = ans1[1]['ans'];
  ans3rdPlace = ans1[2]['ans'];
  finalAnswer = '';
  finalResults = [];
  finalSongNames = [];
  lastIndex = 0;
}