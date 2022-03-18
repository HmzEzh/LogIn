import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginpage/cor.dart';
import 'dart:ui';
void main(List<String> args) {
  runApp(MaterialApp(
    home: homme()
  ));
  
}

class homme extends StatelessWidget {
  const homme({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size;
    return MaterialApp(
    home:
    Scaffold(body :Column(
      children: [
        CustomPaint(
    size: Size(x.width,x.height/2.3), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter()
    ),
     Text("data") ],
      )));
  }
}
//Copy this CustomPainter code to the Bottom of the File
