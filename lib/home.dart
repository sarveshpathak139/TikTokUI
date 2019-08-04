import 'package:flutter/material.dart';
import 'package:tiktok/widgets/action_toolbar.dart';
import 'package:tiktok/widgets/bottom_toolbar.dart';
import 'package:tiktok/widgets/video_description.dart';

class Home extends StatelessWidget {

  Widget get topSection => Container(
    
    height: 100.0,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Following"),
        Container(
          width: 15.0,
        ),
        Text("For you",
        style: TextStyle(
          fontSize: 17.0, fontWeight: FontWeight.bold
        ),)
      ],
    ),
  );
  

  Widget get middleSection => Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
        VideoDescription(),
        ActionsToolbar(),
        ],
      ),
    );

   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          //Top Section
         topSection,

         //MiddleSection
         middleSection,

         //BottomSection
         BottomToolbar()
          
        ],
      ),
    );
  }
}
