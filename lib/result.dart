import 'package:flutter/material.dart';
import './music_player.dart';



class Result extends StatelessWidget {
  final int resultScore;


  Result(this.resultScore);

  String get energyLevel{
     String resultSong = 'Khruangbin - A Calf Born In Winter.mp3';
    if(resultScore >3 && resultScore <= 6){
      resultSong = 'Gang Starr - Full Clip.mp3';
    }
    if(resultScore >6){
      resultSong = 'Kanye West - Follow God (Lyrics).mp3';
    }

    return resultSong;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center (child:  RaisedButton(
          child: Text('Play Now!', style:TextStyle(fontSize:36,fontWeight:FontWeight.bold)),
          onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MusicPlayer(energyLevel)),
            );
          },
          ),
          ),
    );
  }
}

