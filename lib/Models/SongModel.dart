import 'package:decision_tree_music/Widgets/MusicBoardPage.dart';

List<Map<String, dynamic>> songDetails = [
  {
    'singerName': 'Shakira',
    'songName': 'Loca Loca',
    'categoryA': 'Hip-Hop',
    'categoryB': 'Trap',
    'categoryC': 'Chainz',
  },
  {
    'singerName': 'Adam',
    'songName': 'Sugar',
    'categoryA': 'Hip-Hop',
    'categoryB': 'Trap',
    'categoryC': 'Chainz',
  },
  {
    'singerName': 'BSGDS',
    'songName': '2',
    'categoryA': 'Hip-Hop',
    'categoryB': 'Alternative',
    'categoryC': 'Common',
  },
  {
    'singerName': 'CGDSG',
    'songName': '3',
    'categoryA': 'Hip-Hop',
    'categoryB': 'Conscious',
    'categoryC': 'Common',
  },
  {
    'singerName': 'DGDSGG',
    'songName': '4',
    'categoryA': 'RnB',
    'categoryB': 'Pop',
    'categoryC': 'Beyonce',
  },
  {
    'singerName': 'EDGDSD',
    'songName': '5',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'FGDKJKGJ',
    'songName': '6',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'GKHIDK',
    'songName': '7',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'HKDIHDK',
    'songName': '8',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'IDHIDKH',
    'songName': '9',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'JKHDI',
    'songName': '10',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'KDHODI',
    'songName': '11',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'LHDIDH',
    'songName': '12',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'MHDIHD',
    'songName': '13',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'NISHEI',
    'songName': '14',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'ODHID',
    'songName': '15',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Brad Mehldau',
  },
  {
    'singerName': 'PODHD',
    'songName': '16',
    'categoryA': 'RnB',
    'categoryB': 'Dark',
    'categoryC': '6lack',
  },
  {
    'singerName': 'QODHD',
    'songName': '17',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Madeleine Peyroux',
  },
  {
    'singerName': 'RSOHD',
    'songName': '18',
    'categoryA': 'Jazz',
    'categoryB': 'Modern Jazz',
    'categoryC': 'Avishai Cohen',
  },
  {
    'singerName': 'SOHEI',
    'songName': '19',
    'categoryA': 'Jazz',
    'categoryB': 'Cool Jazz',
    'categoryC': 'Lester Young',
  },
  {
    'singerName': 'TOSHIE',
    'songName': '20',
    'categoryA': 'Jazz',
    'categoryB': 'Blues',
    'categoryC': 'Bessie Smith',
  }
];
/*
{'Trap': [{'ans': 'Chainz'}, {'ans': 'Lil Uzi vert'}, {'ans': 'Chief Keef'}]},
{'Conscious': [{'ans': 'Kendrick Lamar'}, {'ans': 'Nas'}, {'ans': 'Common'}]},
{'Alternative': [{'ans': 'A tribe called quest'}, {'ans': 'Saba'}, {'ans': 'ASAP Rocky'}]},
{'Old School': [{'ans': 'Destiny’s Child'}, {'ans': 'Boyz to Men'}, {'ans': 'R Kelly'}]},
{'Pop': [{'ans': 'Mariah Carey'}, {'ans': 'The Weekend'}, {'ans': 'Beyonce'}]},
{'Dark': [{'ans': '6lack'}, {'ans': 'Roy woods'}, {'ans': 'Daniel Caesar'}]},
{'Modern Jazz': [{'ans': 'Brad Mehldau'}, {'ans': 'Avishai Cohen'}, {'ans': 'Madeleine Peyroux'}]},
{'Blues': [{'ans': 'Bessie Smith'}, {'ans': 'Robben Ford'}, {'ans': 'BB King'}]},
{'Cool Jazz': [{'ans': 'Lester Young'}, {'ans': 'Chet Baker'}, {'ans': 'The Lighthouse All-Stars'}]},
*/


List<String> finalResults = List<String>();
List<String> finalSongNames = List<String>();


void finalOutput(){

  for (int i = 0; i < songDetails.length; i++)
    {
      if (finalAnswer == songDetails[i]['categoryA'] && qtIndex == 1) {
        finalResults.add(songDetails[i]['singerName']);
        finalSongNames.add(songDetails[i]['songName']);
      } else if (finalAnswer == songDetails[i]['categoryB'] && qtIndex == 2) {
        finalResults.add(songDetails[i]['singerName']);
        finalSongNames.add(songDetails[i]['songName']);
      }
      else if (finalAnswer == songDetails[i]['categoryC'] && qtIndex == 2) {
        finalResults.add(songDetails[i]['singerName']);
        finalSongNames.add(songDetails[i]['songName']);
      }
        //return (songDetails[i]['singerName']);
    }

  print(finalResults.length);
}