
import 'package:flutter/material.dart';
import 'package:my_project11/pages/introduction.dart';

void main() {
  runApp(IntroPage());
}

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffDDDDDD),
        body: Introduction(),


    ), 
    debugShowCheckedModeBanner: false,
    );




  }
}





