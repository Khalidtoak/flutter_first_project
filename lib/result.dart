import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function onResetPressed;

  Result(this.score, this.onResetPressed);
  String get resultPhrase {
    var phrase;
    if (score > 20) {
      phrase = "You know me, your score $score";
    } else if (score < 15) {
      phrase = "you no know me $score";
    } else {
      phrase = "Your score $score";
    }
    return phrase;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: onResetPressed,
            color: Colors.blue,

            child: Text("Reset button"),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

}