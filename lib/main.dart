import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    //print('button clicked');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What's your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion
            ),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('button clicked 2')
            ),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion
            ),
          ],
        ),
      ),
    );
  }
}
