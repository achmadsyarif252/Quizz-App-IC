import 'package:flutter/material.dart';

class AwalBawah extends StatelessWidget {
  final String teks;
  final Function handler;
  AwalBawah(this.teks,this.handler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0,left: 50.0,right: 50.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlueAccent, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          width: double.infinity,
          child: MaterialButton(
            hoverColor: Colors.blueAccent,
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            splashColor: Colors.blue,
            onPressed: ()=>handler(context),
            color: Colors.transparent,
            textColor: Colors.white,
            child: Text(
              teks,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}
