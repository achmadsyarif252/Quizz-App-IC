import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quizz_app20/main.dart';
import 'package:quizz_app20/screens/result.dart';
import 'package:quizz_app20/screens/topics.dart';
import 'package:quizz_app20/widgets/quiz_btn_asnwer.dart';

class QuizPage extends StatefulWidget {
 final String? selectedText;
 QuizPage({this.selectedText});
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String selectedTopics = '';

  //Bank Soal
  var _question = [
    {
      'questionText': 'Siapa penemu mesin uap pertama kali ?',
      'answer': [
        {'answerTxt': 'James Bond', 'score': 0},
        {'answerTxt': 'James Wat', 'score': 1},
        {'answerTxt': 'James When', 'score': 0},
        {'answerTxt': 'James Now', 'score': 0}
      ]
    },
    {
      'questionText': 'Bapak pramuka dunia adalah... ?',
      'answer': [
        {'answerTxt': 'Boden Powwel', 'score': 1},
        {'answerTxt': 'Sri Sultan HKB', 'score': 0},
        {'answerTxt': 'Bpk Agung Budiharjo', 'score': 0},
        {'answerTxt': 'Drs.Suratmi', 'score': 0},
      ]
    },
    {
      'questionText': 'Negara pemenang piala dunia terbanyak... ?',
      'answer': [
        {'answerTxt': 'Brazil', 'score': 1},
        {'answerTxt': 'Argentina', 'score': 0},
        {'answerTxt': 'Germany', 'score': 0},
        {'answerTxt': 'Italia', 'score': 0},
      ]
    },
    {
      'questionText': 'Mata uang dengan nilai tukar terbesar adalah... ?',
      'answer': [
        {'answerTxt': 'Dollar AS', 'score': 0},
        {'answerTxt': 'Dollar Singapore', 'score': 0},
        {'answerTxt': 'Euro', 'score': 1},
        {'answerTxt': 'Pundsterling', 'score': 0},
      ]
    },
    {
      'questionText': 'Perusahaan asal amerika dengan Net Worth terbesar... ?',
      'answer': [
        {'answerTxt': 'Apple', 'score': 0},
        {'answerTxt': 'Amazon', 'score': 1},
        {'answerTxt': 'Facebook', 'score': 0},
        {'answerTxt': 'Google', 'score': 0},
      ]
    },
    {
      'questionText': 'Pemilik perusahaan facebook... ?',
      'answer': [
        {'answerTxt': 'Mark Zuckerberg', 'score': 1},
        {'answerTxt': 'Jeff Bezos', 'score': 0},
        {'answerTxt': 'CR Ronaldo', 'score': 0},
        {'answerTxt': 'Lionel Messi', 'score': 0},
      ]
    },
    {
      'questionText': 'Negara dengan ranking militer tertinggi di dunia... ?',
      'answer': [
        {'answerTxt': 'China', 'score': 0},
        {'answerTxt': 'Amerika Serikat', 'score': 1},
        {'answerTxt': 'Russia', 'score': 0},
        {'answerTxt': 'India', 'score': 0},
      ]
    },
    {
      'questionText': 'Pesampat jet tempur milik amerika khusus untuk pengeboman... ?',
      'answer': [
        {'answerTxt': 'F22 Raptor', 'score': 0},
        {'answerTxt': 'SU 35', 'score': 0},
        {'answerTxt': 'B2 Spirit', 'score': 1},
        {'answerTxt': 'Airforce 635 Hawk', 'score': 0},
      ]
    },
    {
      'questionText': 'Merek Smartphone yang tidak lagi disupport Google... ?',
      'answer': [
        {'answerTxt': 'Infinix', 'score': 0},
        {'answerTxt': 'Realme', 'score': 0},
        {'answerTxt': 'Oppo', 'score': 0},
        {'answerTxt': 'Huawei', 'score': 1},
      ]
    },
    {
      'questionText': 'Suku asli Australia pada jaman dulu... ?',
      'answer': [
        {'answerTxt': 'Aborigin', 'score': 1},
        {'answerTxt': 'Dayak', 'score': 0},
        {'answerTxt': 'Jawa', 'score': 0},
        {'answerTxt': 'Mandarin', 'score': 0},
      ]
    },

  ];

  var _question2 = [
    {
      'questionText': 'Pemenang Piala dunia 2010 adalah?',
      'answer': [
        {'answerTxt': 'Brazil', 'score': 1},
        {'answerTxt': 'Argentina', 'score': 0},
        {'answerTxt': 'Afrika Selatan', 'score': 0},
        {'answerTxt': 'Indonesia', 'score': 0}
      ]
    },
    {
      'questionText': 'Teknologi yang digunakan untuk membangaun sesuatu dari nano robot... ?',
      'answer': [
        {'answerTxt': 'Nanosel Rotoma 12L', 'score': 0},
        {'answerTxt': 'Robotic Nano Tech', 'score': 0},
        {'answerTxt': 'Giant Tech Soft', 'score': 1},
        {'answerTxt': 'Pre Configured Robots', 'score': 0},
      ]
    },
    {
      'questionText': 'Nama SDK kotlin untuk hybrid application adalah..... ?',
      'answer': [
        {'answerTxt': 'Kotlin Multi Platform', 'score': 1},
        {'answerTxt': 'Azure', 'score': 0},
        {'answerTxt': 'Scala', 'score': 0},
        {'answerTxt': 'Kobolt', 'score': 0},
      ]
    },
    {
      'questionText': 'Pemilik Akun JRXID... ?',
      'answer': [
        {'answerTxt': 'JRINK SID', 'score': 0},
        {'answerTxt': 'Raffi Ahmad', 'score': 0},
        {'answerTxt': 'Ahmad Dahlan', 'score': 1},
        {'answerTxt': 'Ki Gede Subando', 'score': 0},
      ]
    },
    {
      'questionText': 'Perusahaan asal amerika dengan Net Worth terbesar... ?',
      'answer': [
        {'answerTxt': 'Apple', 'score': 0},
        {'answerTxt': 'Amazon', 'score': 1},
        {'answerTxt': 'Facebook', 'score': 0},
        {'answerTxt': 'Google', 'score': 0},
      ]
    },
    {
      'questionText': 'Pemilik perusahaan facebook... ?',
      'answer': [
        {'answerTxt': 'Mark Zuckerberg', 'score': 1},
        {'answerTxt': 'Jeff Bezos', 'score': 0},
        {'answerTxt': 'CR Ronaldo', 'score': 0},
        {'answerTxt': 'Lionel Messi', 'score': 0},
      ]
    },
    {
      'questionText': 'Negara dengan ranking militer tertinggi di dunia... ?',
      'answer': [
        {'answerTxt': 'China', 'score': 0},
        {'answerTxt': 'Amerika Serikat', 'score': 1},
        {'answerTxt': 'Russia', 'score': 0},
        {'answerTxt': 'India', 'score': 0},
      ]
    },
    {
      'questionText': 'Pesampat jet tempur milik amerika khusus untuk pengeboman... ?',
      'answer': [
        {'answerTxt': 'F22 Raptor', 'score': 0},
        {'answerTxt': 'SU 35', 'score': 0},
        {'answerTxt': 'B2 Spirit', 'score': 1},
        {'answerTxt': 'Airforce 635 Hawk', 'score': 0},
      ]
    },
    {
      'questionText': 'Merek Smartphone yang tidak lagi disupport Google... ?',
      'answer': [
        {'answerTxt': 'Infinix', 'score': 0},
        {'answerTxt': 'Realme', 'score': 0},
        {'answerTxt': 'Oppo', 'score': 0},
        {'answerTxt': 'Huawei', 'score': 1},
      ]
    },
    {
      'questionText': 'Suku asli Australia pada jaman dulu... ?',
      'answer': [
        {'answerTxt': 'Aborigin', 'score': 1},
        {'answerTxt': 'Dayak', 'score': 0},
        {'answerTxt': 'Jawa', 'score': 0},
        {'answerTxt': 'Mandarin', 'score': 0},
      ]
    },

  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void previousQuestion() {
    setState(() {
      if (_questionIndex > 0) {
        _questionIndex--;
      }
    });
  }

  void nextQuestion(int score) {
    int jmlSoal = _question.length;
    double penambahan = (10 / jmlSoal) / 10;
    setState(() {
      _totalScore += score;
      _questionIndex++;
      progres += penambahan;
    });
  }

  void reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  int _durasi = 60;
  Timer? _timer;

  void _startTimer() {
    _durasi = 60;
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer.periodic(
      Duration(seconds: 1),
          (timer) {
        setState(() {
          if (_durasi > 0) {
            _durasi--;
          } else {
            showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    title: Text('Timer is over'),
                    shape: RoundedRectangleBorder(),
                    content: Card(
                      child: Text('Your time is over'),
                    ),
                    actions: [
                      MaterialButton(
                        color: Colors.blue,
                        child: Text('OK'),
                        onPressed: () {
                          _timer!.cancel();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (ctx) =>
                                  Result(_totalScore, reset)));
                        },
                      ),
                    ],
                  );
                });
          }
        });
      },
    );
  }

  var soal;

  @override
  void initState() {
    selectedTopics = widget.selectedText!;
    if (widget.selectedText == null) {
      soal = _question;
    }
    if (selectedTopics == 'Technology') {
      soal = _question;
    } else if (selectedTopics == 'Finance') {
      soal = _question2;
    } else {
      soal = _question;
    }
    _totalScore = 0;
    _questionIndex = 0;
    _startTimer();

    super.initState();
  }


double progres=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 40, 80, 1),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 1.0),
          child: LinearPercentIndicator(
            width: MediaQuery.of(context).size.width,
            lineHeight: 5.0,
            percent: progres,
            backgroundColor: Colors.grey,
            progressColor: Colors.amberAccent,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Quiz Page',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => Quiz(),
              ),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(),
                      content: Text('Close The App'),
                      title: Text('EXIT'),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            exit(0);
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.red,
                        ),
                      ],
                    );
                  });
            },
            child: Text(
              'Exit',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: _questionIndex < soal.length
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        'Soal ke ${_questionIndex + 1} dari ${soal.length}',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      )),
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$_durasi detik',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          soal[_questionIndex]['questionText'] as String,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  //Answer Button
                  ...(soal[_questionIndex]['answer']
                          as List<Map<String, Object>>)
                      .map((soale) {
                    return QuizBtnAsnwer(soale, _questionIndex, nextQuestion);
                  }).toList(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          previousQuestion();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        onPressed: () {
                          setState(() {
                            _questionIndex++;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
            )
          : Result(_totalScore, reset),
    );
  }
}
