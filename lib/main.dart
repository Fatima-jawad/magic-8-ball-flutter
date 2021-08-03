import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue[800],
            titleTextStyle: TextStyle(
              color: Colors.black,
            ),
          ),
          body: balls(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class balls extends StatefulWidget {
  @override
  _ballsState createState() => _ballsState();
}

class _ballsState extends State<balls> {
  int ballImg = 1;

  void randomaized() {
    setState(() {
      ballImg = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: TextButton(
        child: Image.asset('images/ball$ballImg.png'),
        onPressed: randomaized,
      ),
    );
  }
}
