import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function clickHandler;

  Result(this.resultScore, this.clickHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and Innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You are ...strange?";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: clickHandler,
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
/**/