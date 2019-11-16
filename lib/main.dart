import 'package:flutter/material.dart';
import './screens/survey.dart';
import './screens/makeNewPlaylist.dart';
import 'music_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Gif-Flow',
      theme: ThemeData(
        primaryColor: Colors.red[300],
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Gif-Flow'),
          actions: <Widget>[IconButton(icon: Icon(Icons.assessment),
          onPressed:() {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Survey()),
            );
          }),
          IconButton(icon: Icon(Icons.add_circle),),//make a new playlist
          IconButton(icon: Icon(Icons.audiotrack), onPressed:() {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MusicPlayer()),
            );
          })//see all playlists
          ],
        ),
        body: Center(
          child: Text('Lets start making some Music!', 
                  style: TextStyle(fontSize: 30.0,
                  color: Colors.red[200]
            ),
          ),
        ),
      ),
    );
  }
}




