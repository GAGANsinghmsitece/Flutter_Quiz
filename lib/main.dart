import 'package:flutter/material.dart';

import './Quiz.dart';
import './result.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  var questionIndex = 0;
  var _score = 0;
  void answerQuestion(int score) {
    setState(() {
      questionIndex++;
    });
    _score += score;
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favourite Anime?',
        'answers': [
          {'text': 'Attack on Titan', 'score': 9},
          {'text': 'Haikyuu!', 'score': 2},
          {'text': 'Jujutsu Kaisen', 'score': 5},
          {'text': 'Tokyo ghoul', 'score': 10}
        ]
      },
      {
        'questionText': 'What\'s your favourite Color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Blue', 'score': 6},
          {'text': 'Red', 'score': 4},
          {'text': 'Pink', 'score': 2}
        ]
      },
      {
        'questionText': 'What\'s your favourite Programming Language?',
        'answers': [
          {'text': 'Python', 'score': 1},
          {'text': 'Javascript', 'score': 3},
          {'text': 'C++', 'score': 5},
          {'text': 'Java', 'score': 9}
        ]
      },
      {
        'questionText': 'What\'s your favourite Animal?',
        'answers': [
          {'text': 'Lion', 'score': 10},
          {'text': 'Tiger', 'score': 7},
          {'text': 'Wolf', 'score': 5},
          {'text': 'Elephant', 'score': 3}
        ]
      },
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  clickHandler: answerQuestion,
                  questions: questions,
                  questionIndex: questionIndex)
              : Result(_score, _resetQuiz),
        ));
  }
}
