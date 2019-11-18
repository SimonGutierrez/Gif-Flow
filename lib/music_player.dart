import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import './main.dart';



class MusicPlayer extends StatefulWidget {
  final String resultSong;
  MusicPlayer(this.resultSong);

  @override
  MusicPlayerState createState() => new MusicPlayerState(resultSong);
}

class MusicPlayerState extends State<MusicPlayer> {
  final String resultSong;
  MusicPlayerState(this.resultSong);
  bool isplaying = false;

  AudioPlayer advancedPlayer;


  @override
  initState() {
    super.initState();
    loadMusic();
  }

  Future loadMusic() async {
    advancedPlayer = await AudioCache().play('music/$resultSong');
    isplaying = true;
  }


  Future stopMusic() async {
    if (isplaying == true) {
      await advancedPlayer.stop();
      isplaying = false;
    }
  }

  @override
  void dispose() {
    advancedPlayer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     print('this is hit, $resultSong');
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[300],
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Your Song!'),
          actions: <Widget>[IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },),
          IconButton(icon: Icon(Icons.stop), onPressed: () {
            //  await audioPlayer.stop();
             stopMusic();
          },),
          ],
        ),
        body: Center(
          child: Text('You are now listening to $resultSong',
                  style: TextStyle(fontSize: 30.0,
                  color: Colors.red[200]
            ),
        ),
      ),
      ),
    );
  }
}
