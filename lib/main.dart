import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bouncy_ball_flutter/homepage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


void main() {
  runApp(MyApp());
}
class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (__) => HomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF50d9fe),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/logo.jpg'),
            height: 200.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          SpinKitSpinningCircle(
            color: Color(0xFFe63946),
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
  @override
  Widget build(BuildContext context) => throw UnimplementedError();
    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoadScreen(),
        );
      }
    }