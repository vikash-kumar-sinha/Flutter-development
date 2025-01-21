import 'package:flutter/material.dart';
import 'dart:math';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:ChangeBackground(),
    );
  }

}

class ChangeBackground extends StatefulWidget{
  @override
  State<ChangeBackground> createState()=>_ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<ChangeBackground>{
  Color _backgroundColor=Colors.white;
  var colorList=[Colors.white,Colors.green,Colors.red,Colors.blue,Colors.grey,Colors.orange];

  void _ChangeColor(){
    setState((){
      _backgroundColor=colorList[Random().nextInt(colorList.length-1)].withOpacity(1.0);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: _backgroundColor,
      body:Center(
        child: ElevatedButton(
          onPressed: _ChangeColor,
          child: Text('Change Color'),
        ),
      ),
    );
  }
}