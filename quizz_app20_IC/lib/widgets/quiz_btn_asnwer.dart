import 'package:flutter/material.dart';

class QuizBtnAsnwer extends StatelessWidget {
  final Map<String, Object> soal;
  final int index;
  final Function handler;
  QuizBtnAsnwer(this.soal, this.index, this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4.0),
      width: double.infinity,
      child: MaterialButton(
        onPressed: () {
          handler(soal['score']);
        },
        color: Colors.white,
        splashColor: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              soal['answerTxt'] as String,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
