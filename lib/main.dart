import 'package:flutter/material.dart';
import 'dart:math';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(home:ChangeBackground());
  }
}

class ChangeBackground extends StatefulWidget{
  @override
  State<ChangeBackground> createState()=>_ChangeBackgroundState();

}

class _ChangeBackgroundState extends State<ChangeBackground>{
  Color _backgroundColor=Colors.white;

  void _ChangeColor(){
    _backgroundColor=Color(Random().nextInt(0xFFFFFF)).withOpacity(1.0);
    setState((){});
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:_backgroundColor,
      body:Center(child:ElevatedButton(
        onPressed:_ChangeColor,
        child:Text('change Color')
      ))
    );
  }
}