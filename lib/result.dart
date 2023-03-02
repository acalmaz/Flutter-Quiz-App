import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 14) {
      resultText = 'You are so bad!';
    } else if (resultScore == 15) {
      resultText = 'You are ... strange?!';
    } else if (resultScore == 16) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are awesome and innocent!';
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
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
