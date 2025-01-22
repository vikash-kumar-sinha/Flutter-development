import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: textShadow(),
    );
  }
}

class textShadow extends StatefulWidget{
  @override
  State<textShadow> createState()=>_textShadowState();
}

class _textShadowState extends State<textShadow>{
  var textController=TextEditingController();
  String? editedtext="";
  void showText(String text){
    editedtext=text;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  label: Text('Enter Text'),

                ),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed:(){showText(textController.text.toString());}, child: Text('show text')),
            SizedBox(height: 15,),
            Container(
              height: 150,
              width: 150,
              child: Text('$editedtext',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
                shadows: [
                  Shadow(
                    offset: Offset(2.0,2.0),
                    blurRadius: 3.0,
                    color: Colors.green
                  )
                ]
              ),),
            )
          ],
        ),
      ),
    );
  }
}
