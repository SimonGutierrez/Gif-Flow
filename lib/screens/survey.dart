//render survey for to suggest a playlist

import 'package:flutter/material.dart';
import '../quiz.dart';
import '../result.dart';

class Survey extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SurveyState();
  }
}
class SurveyState extends State<Survey> {
  final questions = const[
      {'questionText':'What do you feel like listening to?',
      'answers':[
          {
            'gif':'https://i.giphy.com/media/iDlsb5ZYn4tNMlmUt8/giphy.webp',
            'score':1
          },
          {
            'gif':'https://i.giphy.com/media/iDlsb5ZYn4tNMlmUt8/giphy.webp',
            'score':2
          },
          {
            'gif':'https://i.giphy.com/media/LKqDgLlK6SuIM/giphy.webp',
            'score':3
          },
        ],
      },

      {'questionText':'Do you wanna dance?',
      'answers':[
        {
          'gif':'https://i.giphy.com/media/AuIvUrZpzBl04/giphy.webp',
          'score':1
        },
        {
          'gif':'https://i.giphy.com/media/wAxlCmeX1ri1y/giphy.webp',
          'score':2
        },
        {
          'gif':'https://i.giphy.com/media/zMCfqXkwjmTO8/giphy.webp',
          'score':3
          },
        ],
      },

      {'questionText':'How sleepy are you today?',
      'answers':[
        {
          'gif':'https://i.giphy.com/media/aZmD30dCFaPXG/giphy.webp',
          'score':1
        },
        {
          'gif':'https://i.giphy.com/media/aZmD30dCFaPXG/giphy.webp',
          'score':2
        },
        {
          'gif':'https://i.giphy.com/media/l2SpKjO20hPyhr1fy/giphy.webp',
          'score':3
          },
        ],
      },
  ];

  var questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      questionIndex = questionIndex+1;
      if(questionIndex < questions.length) {
        print('still have questions');
      }
      else{print('no more questions');}
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Survey'),
          actions: <Widget>[IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          },),
          ],
        ),
       body: (questionIndex < questions.length) ? Quiz(questions: questions,
        questionIdx: questionIndex,
        questionMethod: answerQuestion)
        : Result(_totalScore)
        ),
      theme: ThemeData(
        primaryColor: Colors.red[300],
        brightness: Brightness.dark,
      ),
    );
  }
}

