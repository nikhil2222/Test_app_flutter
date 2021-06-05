import 'package:flutter/material.dart';

import 'change_name.dart';
import 'drawer.dart';

class HomePage extends StatefulWidget { //stl //stateless means no change
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "change me";
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome app"), //title of app
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: SingleChildScrollView(
          child: Card(
              child:
              ChangeNameCard(myText: myText, nameContoller: _nameController,)
          ),
        ),),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        myText = _nameController.text;
        setState(() {

        });
      },
        child: Icon(Icons.refresh),
      ),
    );
  }}