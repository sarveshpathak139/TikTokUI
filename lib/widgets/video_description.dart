import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        height: 100.0,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Text("@vaibhavi",style: TextStyle(fontWeight: FontWeight.bold),),
           Text("Video title and some other stuff"),
           Row(
             children: <Widget>[
               Icon(Icons.music_note,size: 15.0,color:Colors.white,),
               Text("Artist name - Album name - song",style: TextStyle(fontSize: 12)),
             ],
           )  
          ],
        ),
      ),
    );
  }
}