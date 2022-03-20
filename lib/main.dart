import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginpage/cor.dart';
import 'textinput.dart';
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
    Scaffold(
      body :Container(
      child:Column(children: [
        new Stack (children: <Widget> [
        CustomPaint(
    size: Size(x.width,x.height/2.3), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter()
    ),
     Container(
      margin: EdgeInsets.only(top:50),
       width: double.infinity,
       child: Column(
         children: [
           Image.asset('imgs/logo.png'),
           Container(
             width: 300,
             child: Text("L’Ecole Nationale des Sciences Appliquées d’El Jadida"
           ,textAlign: TextAlign.center,
           style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold ,color: Color.fromARGB(0, 255, 255, 255).withOpacity(1.0))),
           )
         ],
       ),
     )]
      ),
      Column(children: [
        Container (
          width: 100,
          padding:  EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color.fromARGB(255, 2, 60, 141),width: 4.0))
          ),
          child :Text("Log In",
           textAlign: TextAlign.center,
           style: TextStyle(fontSize: 35,
           fontWeight: FontWeight.bold,
           color: Color.fromARGB(255, 2, 60, 141),
           ),
           )),
           Container(child:MyCustomForm())
        
      ],

      )
      ],))));
  }
}
//Copy this CustomPainter code to the Bottom of the File
