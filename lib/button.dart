import 'package:flutter/material.dart';

class Buttom extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 2, 60, 141),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text("Log In",style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
    );


  }

}