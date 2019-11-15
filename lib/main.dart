import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  final questions = const[
      {'questionText':'What do you feel like listening to?',
      'answers':[
        'https://i.giphy.com/media/iDlsb5ZYn4tNMlmUt8/giphy.webp',
        'https://i.giphy.com/media/iDlsb5ZYn4tNMlmUt8/giphy.webp',
        'https://i.giphy.com/media/LKqDgLlK6SuIM/giphy.webp'],
        },
        {'questionText':'Do you wanna dance?',
      'answers':[
        'https://i.giphy.com/media/AuIvUrZpzBl04/giphy.webp'
       'https://i.giphy.com/media/AuIvUrZpzBl04/giphy.webp',
        'https://i.giphy.com/media/zMCfqXkwjmTO8/giphy.webp'],
        },
        {'questionText':'How sleepy are you today?',
      'answers':[
        'https://i.giphy.com/media/aZmD30dCFaPXG/giphy.webp',
        'https://i.giphy.com/media/aZmD30dCFaPXG/giphy.webp',
        'https://i.giphy.com/media/l2SpKjO20hPyhr1fy/giphy.webp'],
        },
    ];

  var questionIndex = 0;
  void answerQuestion() {
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
          title: Text('Gif-FLow'),
        ),
        body: (questionIndex < questions.length) ? Quiz(questions: questions,
        questionIdx: questionIndex,
        questionMethod: answerQuestion)
        : Result()
        ),
      );
  }
}


