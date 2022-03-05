import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';
import 'package:flutter/material.dart';

class stackdemo extends StatelessWidget {
  const stackdemo({ Key? key }) : super(key: key);

  _getContainer(Color color, {double width = 100, double height = 100}){
    return Container(
        color:  color,
        width: width,
        height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          'this is test demo',
          style: GoogleFonts.getFont('Lato'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions : [] , 
      ),
      extendBodyBehindAppBar: true,
      */

      body: SafeArea(child: Stack(
        fit:StackFit.loose,
        children: [
          _getContainer(Colors.green, width: 400, height: 400)  ,
         _getContainer(Colors.blue , width : 250 , height : 250 ) , 
         Positioned(child:  _getContainer(Colors.yellow) , bottom :10 , left: 50 ,),
         Text("hello flutter" , style : GoogleFonts.lato() ,)
      ],)
      ,),
    );
  }
}



/*

class MyApp extends StatelessWidget {

  const MyApp();
  @override
  Widget build(BuildContext context) {
    const path = 'https://c.tenor.com/8BUHGz3NKKUAAAAC/angry-frustrated.gif';
    //const path= 'https://pbs.twimg.com/profile_images/1208234904405757953/mT0cFOVQ_400x400.jpg';
    return Scaffold(
        drawer: Drawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: (){},
          child: Text('+'),
        ),
        appBar: AppBar(

          //leading: Icon(Icons.menu),
          actions: [Icon(Icons.phone,color: Colors.black,),SizedBox( width: 30,) ,Icon(Icons.message), SizedBox(width:10)],
          backgroundColor: Colors.orangeAccent,
          title: Text('First App 2022'),),
        backgroundColor: Colors.tealAccent,



        body:Container(
          width: 300,
          height: 300,
          //width: double.infinity,
          //height: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.yellowAccent,blurRadius: 10), BoxShadow(color: Colors.black,blurRadius: 20)],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2,color: Colors.black, style: BorderStyle.solid),
              gradient: LinearGradient(colors: [
                Colors.redAccent, Colors.blueAccent, Colors.greenAccent
              ],begin: Alignment.topLeft, end:Alignment.bottomRight)),
          //width: 300,
          //height: 200,
          child: Text('Flutter Container',style: TextStyle(fontSize: 40),),
          //color: Colors.redAccent,
        )

    );
  }
}


*/