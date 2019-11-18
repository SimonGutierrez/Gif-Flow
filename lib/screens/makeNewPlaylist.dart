// make your own playlist here
import 'package:flutter/material.dart';

class MakeNewPlaylist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create a new playlist',
      theme: ThemeData(
        primaryColor: Colors.red[300],
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ummm.....'),
          actions: <Widget>[IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          },),
          ],
        ),
        body: Center(
          child: new Image.network('https://i.giphy.com/media/6uGhT1O4sxpi8/giphy.webp'),
        ),
      ),
    );
  }
}
