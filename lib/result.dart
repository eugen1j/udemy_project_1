import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty good";
    } else {
      resultText = "124";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz"),
            style: TextButton.styleFrom(
              primary: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
