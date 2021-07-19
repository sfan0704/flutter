import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback action;
  final String text;

  const Answer({
    Key? key,
    required this.action,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: action,
        child: Text(text),
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            textStyle: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
