import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app20/screens/quiz.dart';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
        },),
      ),
      backgroundColor: Color.fromRGBO(20, 40, 80, 1),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(21, 50, 100, 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0,),),
              ),
              child: MaterialButton(
                splashColor: Colors.deepPurple,
                color: Colors.transparent,
                onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>QuizPage(selectedText: 'Technology',)));
                },
                child: ListTile(
                  leading: Text(
                    'Technology',style: TextStyle(fontSize: 16.0,color: Colors.white),
                  ),
                  trailing: Icon(Icons.arrow_drop_down_circle_sharp,color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              padding: const EdgeInsets.all(5.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(21, 50, 100, 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0,),),
              ),
              child: MaterialButton(
                splashColor: Colors.deepPurple,
                color: Colors.transparent,
                onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>QuizPage(selectedText: 'Finance',)),);

                },
                child: ListTile(
                  leading: Text(
                    'Finance',style: TextStyle(fontSize: 16.0,color: Colors.white),
                  ),
                  trailing: Icon(Icons.arrow_drop_down_circle_sharp,color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
