import 'package:flutter/material.dart';

import 'dart:convert';
import 'drawer.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget { //stl //stateless means no change
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState(){
    super.initState();
    getData();
  }
  getData() async{
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {
      
    });
    print(res.body);
  }                    //do someting in between

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome app"), //title of app
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: data!=null? ListView.builder(itemBuilder: (context,index){
          return ListTile(
            title:Text( data[index]["title"]),
              subtitle: Text("Id: ${data[index]["id"]}"),
            leading: Image.network(data[index]["url"]),

          );}, itemCount: data.length,):
        Center(
          child:CircularProgressIndicator(),
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