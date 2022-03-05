import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'screens/stackdemo.dart';
import 'screens/ted.dart';
import 'screens/StateDemo.dart';




void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:const MyApp()
      //home: const stackdemo()
      //home: const ted()
      home: StateDemo()
  ));

}


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



        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children : [
             Text('hey there !!') ,
             SizedBox(height: 21,),
             Text('this is text') ,
          ]
        )


        /*Container(

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
        */
    );
  }
}
