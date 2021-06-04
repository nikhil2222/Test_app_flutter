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
      body: Center(
        child: Container(
          padding:const EdgeInsets.all(8) ,
          alignment: Alignment.bottomCenter,
          width: 100,
          height: 100,

          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(10) ,
            boxShadow: [BoxShadow(
              color: Colors.orange,
              blurRadius: 5,
              offset: Offset(2.0,5.0)

            )],
            gradient: LinearGradient(

                colors: [
              Colors.red,Colors.yellow
            ])
          ),
          child: Text("Hello Nikhil",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        ),
      )
    );
  }
}





