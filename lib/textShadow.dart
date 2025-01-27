

import 'package:flutter/material.dart';


class TextShadow extends StatefulWidget{
  @override
  State<TextShadow> createState()=>_TextShadowState();
}

class _TextShadowState extends State<TextShadow>{
  var _textController=TextEditingController();
  String? editedtext="";

  void show(String text){
    editedtext=text;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(150),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                label: Text('enter text'),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              show(_textController.text.toString());
            }, child: Text('show text')),
            SizedBox(height: 10,),
            Text('$editedtext',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              shadows: [
                Shadow(
                  offset: Offset(3.0,3.0),
                  blurRadius:4.0,
                  color: Colors.green
                )
              ]
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){ Navigator.pop(context);},
        child: Icon(Icons.navigate_before),
      ),
    );
  }
}
