import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String gifURL;
  final Function answerHandler;
  Answer(this.answerHandler,this.gifURL);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        RaisedButton(
          child: new Image.network(gifURL),
          onPressed: answerHandler,
          ),
    );
  }
}




