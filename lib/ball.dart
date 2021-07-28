import 'package:flutter/material.dart';

class MyBall extends StatelessWidget {
  final ballY;
  final double ballWidth; // normal double value for width.
  final double ballHeight; // out of 2, 2 being the entire height of the screen

  MyBall({this.ballY,required this.ballWidth,required this.ballHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, ballY),
      child: Image.asset(
        'images/ball2.png',
        width: MediaQuery.of(context).size.height * ballWidth / 2,
        height: MediaQuery.of(context).size.height * 3 / 4 * ballHeight / 2,
        fit: BoxFit.fill,
      ),
    );
  }
}
