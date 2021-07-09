import 'package:flutter/material.dart';

class AwalRateShare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton.icon(
          splashColor: Colors.transparent,
          onPressed: () {},
          icon: Icon(
            Icons.share,
            color: Colors.blueAccent,
          ),
          label: Text('Share',style: TextStyle(color: Colors.white),),
        ),
        FlatButton.icon(
          splashColor: Colors.transparent,
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Colors.amber,
          ),
          label: Text('Rate Us',style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}
