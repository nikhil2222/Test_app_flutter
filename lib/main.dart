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
        title: Text("Awesome app"), title of app
      ),
      body: Container(
      child: Center(child: Text("Hi Flutter")), //center to write in center
      ),
    );
  }
}





