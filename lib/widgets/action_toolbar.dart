import 'package:flutter/material.dart';
import 'package:tiktok/tiktok_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
class ActionsToolbar extends StatelessWidget{

  static const double ActionWidgetSize = 60.0;

  static const double ActionIconSize = 35.0;

  static const double ShareActionIconSize = 25.0;

  static const double PlusIconSize = 20.0;

  static const double ProfileImageSize = 50.0;

  @override 
  Widget build(BuildContext context){
    return Container(
      width: 100.0,
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          _getFollowAction(),
          _getSocialAction(icon:Icons.favorite, title:"3.2m"),
          _getSocialAction(icon:Icons.comment, title:"16.4k"),
          _getSocialAction(
            icon:Icons.reply, title:"Share",isShare: true),
            _getMusicPlayerAction()
        ]
      ),
    );
  }

  
  Widget _getSocialAction({String title,IconData icon,bool isShare = false}){
      return Container(
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        margin: EdgeInsets.only(top: 10.0),
        child: Column(children:[
          Icon(icon, size:isShare ?ShareActionIconSize:ActionIconSize,color: Colors.grey[300]),
          Padding(
            padding: EdgeInsets.only(top:isShare?5.0: 2.0),
            child: Text(title,style: TextStyle(fontSize:isShare? 10.0: 12.0)),
          )
        ])
      );  
    }

    Widget _getFollowAction(){
      return Container(
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Stack(children:
        [
          _getProfilePicture(),
          _getPlusIcon()
        ])
      );
    }

    Widget _getProfilePicture(){
      return Positioned(
        left: (ActionWidgetSize/2)-(ProfileImageSize/2),
        child: Container(
          height: ProfileImageSize,
          width: ProfileImageSize,
          padding: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ProfileImageSize/2)
          ),
          child: CachedNetworkImage(
            imageUrl: 
                "https://p16.muscdn.com/img/musically-maliva-obj/1624360781215749~c5_720x720.jpeg",
            placeholder: (context,url) => new CircularProgressIndicator(),
            errorWidget: (context,url,error) =>
              new Icon(Icons.error,color: Colors.black),
          ),

        ),
      );

    }

    Widget _getPlusIcon(){
      return  Positioned(
        bottom: 0,
        left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
        child: Container(
          width: PlusIconSize,
          height: PlusIconSize,
            decoration: BoxDecoration(
              color: Colors.red[300],
              borderRadius: BorderRadius.circular(15.0)),
              child: Icon(Icons.add,color: Colors.white,size: 20.0,)
        ),
      );
    }

    LinearGradient get musicGradient => LinearGradient(

          colors: [
            Colors.grey[800],
            Colors.grey[900],
            Colors.grey[900],
            Colors.grey[800]
          ],

          stops: [0.0,0.4,0.6,1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
    );

    Widget _getMusicPlayerAction(){
      return Container(
        
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(11.0),
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(ProfileImageSize / 2)
              ),
              child: CachedNetworkImage(
                imageUrl: "https://p16.muscdn.com/img/musically-maliva-obj/1624360781215749~c5_720x720.jpeg",
                placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(Icons.error),
              ),
            )
          ],
        ),
      );
    }

   
}  