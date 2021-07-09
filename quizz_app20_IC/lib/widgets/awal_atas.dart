import 'package:flutter/material.dart';

class AwalAtas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.only(bottom: 40.0),
          child: Image.asset(
            'assets/images/lamp.png',
            fit: BoxFit.cover,
          ),
        ),

        Text(
          'Flutter Quiz App',
          style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Learn * Take Quizz * Repeat',
          style: TextStyle(color: Colors.white,fontSize: 12.0),
        ),
      ],
    );
  }
}
