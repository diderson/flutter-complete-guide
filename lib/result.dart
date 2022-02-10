import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({ Key? key }) : super(key: key);

  final resultScore;
  final resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    var resultText = 'You didt !';

    if (resultScore <= 8) {
        resultText = 'You awesome and innocent!: ' + resultScore.toString();
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable!: ' + resultScore.toString();
    } else if (resultScore <= 16) {
      resultText = 'You are... strange?: ' + resultScore.toString();
    } else {
      resultText = 'You are so bad!: ' + resultScore.toString();
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
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(onPressed: resetQuizHandler, child: Text('Restart Quiz!'))
          ],
        ));
  }
}
