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

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text('survey done')
    );
  }
}




