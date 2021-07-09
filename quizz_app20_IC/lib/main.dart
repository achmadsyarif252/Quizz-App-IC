import 'package:flutter/material.dart';
import 'package:quizz_app20/screens/topics.dart';

import '../screens/quiz.dart';
import '../widgets/awal_atas.dart';
import '../widgets/awal_bawah.dart';
import '../widgets/awal_rateshare.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'QUWIZ',
    home: Quiz(),
    theme: ThemeData(
        primaryColor: Color.fromRGBO(27, 41, 120, 1), fontFamily: 'OpenSans'),
  ));
}

class Quiz extends StatelessWidget {
  void play(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>QuizPage(selectedText: 'Technology',),),);
  }
  void topics(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Topics(),),);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 40, 80, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AwalAtas(),
          SizedBox(height: 70.0,),
          AwalBawah('PLAY', play),
          AwalBawah('TOPICS', topics),
          SizedBox(height: 40.0,),
          AwalRateShare(),
        ],
      ),
    );
  }
}
