import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  const Result({
    Key? key,
    required this.totalScore,
    required this.resetQuiz,
  }) : super(key: key);

  String get resultPhrase {
    return 'We done! You scored $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Restart!'),
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.indigo,
                textStyle: TextStyle(
                  fontSize: 20,
                )),
          )
        ],
      ),
    );
  }
}
