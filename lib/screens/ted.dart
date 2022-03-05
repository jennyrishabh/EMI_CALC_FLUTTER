import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class ted extends StatelessWidget {
  const ted({ Key? key }) : super(key: key);


  _getAppBar(){
    return AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0.0,
       actions : [ Padding(
          padding : EdgeInsets.only(right : 10) ,  
          child:Icon(Icons.more_vert ,color:Colors.red),
          )
       ] , 
        title: Row(children : [
          Text('TED_TALKS', style: TextStyle(color:Colors.red),) ,
          SizedBox(width: 30) , 
          Text('NEWEST', style: TextStyle( color:Colors.red),) ,
          SizedBox(width: 30) , 
          Icon(Icons.arrow_drop_down ,color:Colors.red),
        ] ,
        //actions : [] , 
      ),
      //extendBodyBehindAppBar: true,
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body : Column(
        children:[
          Stack(children : [
            Card(child: Image.network('https://pi.tedcdn.com/r/talkstar-photos.s3.amazonaws.com/uploads/545a4f1f-0b65-4df7-9956-35e05650bf62/NickHanauer_2019T-embed.jpg'),) , 
            Positioned(child : Row(children : [
                Column(children : [
                    Text('titlte herer ', style: TextStyle( color:Colors.white),) , 
                    Text('author name comes here ', style: TextStyle( color:Colors.white),) , 
                ]) , 
            ] , ))
          ])
        ]
      ) , 
    );
  }
}
