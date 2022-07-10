import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  static route() {
    return MaterialPageRoute(builder: (context) {
      return const MyHomePage();
    });
  }

  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  late final Timer _timer;

  void _startTimer() {
    _counter = 3;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 1) {
          _counter--;
        } else {
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 75,
      height: 75,
      child: Text(
        '$_counter',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 75,
        ),
      ),
    );
  }
}
