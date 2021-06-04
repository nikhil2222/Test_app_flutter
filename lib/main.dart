import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "TestAPP",
    home: HomePage(),
  ));
}
class HomePage extends StatelessWidget { //stl
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome app"), //title of app
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,//use dots and view properties
        children:<Widget> [
        Container(
        padding:const EdgeInsets.all(8) ,
        width: 100,
        height: 100,
        color: Colors.red,),
        Container(padding:const EdgeInsets.all(8) ,
          width: 100,
          height: 100,
          color: Colors.yellow,),
        Container(
         padding:const EdgeInsets.all(8) ,
         width: 100,
         height: 100,
         color: Colors.green,),

      ],),
    );
  }
}





