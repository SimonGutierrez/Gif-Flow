import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';

  String url = '';

  Future<String> getPost() async {
    final response = await http.get('$url/1');
    return json.decode(response.body);
  }

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get energyLevel{
    var resultText = 'low energy';
    if(resultScore >3 && resultScore <= 6){
      resultText = 'medium energy';
    }
    if(resultScore >6){
      resultText = 'high energy';
    }

    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(energyLevel, style:TextStyle(fontSize:36,fontWeight:FontWeight.bold))
    );
  }
}




