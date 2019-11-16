import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIdx;
  final Function questionMethod;
  Quiz({this.questions,this.questionIdx,this.questionMethod});
  @override
  Widget build(BuildContext context) {
    return Column (
            children: [
              Question(
                questions[questionIdx]['questionText']
                ),
              ...(questions[questionIdx]['answers'] as List<Map<String,Object>>).map((answer ) {
                return Answer(()=>questionMethod(answer['score']),answer['gif']);
              }).toList()
            ],
          );
  }
}




