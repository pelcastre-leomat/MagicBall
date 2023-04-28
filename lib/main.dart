import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.redAccent[200],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return
      Center(
          child: TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed : (){
                setState(() {
                  ballNumber = Random().nextInt(5)+1;
                });
                print(ballNumber);
              }
          ),
      );
  }
}


