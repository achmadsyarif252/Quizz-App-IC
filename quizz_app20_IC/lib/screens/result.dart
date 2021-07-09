import 'package:flutter/material.dart';

import '../main.dart';

class Result extends StatelessWidget {
  final int score;
  final Function handler;
  Result(this.score,this.handler);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 40, 80, 1),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/lamp.png',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('Show My Score'),
                    textColor: Colors.white,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: 150,
                  child: MaterialButton(
                    onPressed: () {
                      handler();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Quiz()));

                    },
                    child: Text('Reset Quiz'),
                    textColor: Colors.white,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Text(
              'Your Score :$score',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
