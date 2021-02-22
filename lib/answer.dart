import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callback;
  final String answer;

  Answer({this.callback, this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: RaisedButton(
        child: Text(answer),
        onPressed: callback,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
