import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "TestAPP",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

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
      body:Padding(
        padding: const EdgeInsets.all(16.0),

        child: SingleChildScrollView(
          child: Card(
          child: Column(
            children:<Widget> [Image.asset(""
                "assets/photo-1622796476782-35e5163bbd6f.jpg",
            fit: BoxFit.cover,),
              SizedBox(
                height: 20,
              ),
            Text(myText,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.teal),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
               // keyboardType: TextInputType.phone,
               // obscureText: true,
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  hintText: "Enter something here",
                  labelText: "Name",
                ),
              ),
            )
            ],

          ),
      ),
        ),) ,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [
            // DrawerHeader(child: Text(
            //   "Hi I am drawer",
            // style:TextStyle(color: Colors.white),
            // ),
            // decoration: BoxDecoration(color: Colors.indigo),
            //
            // ),
            UserAccountsDrawerHeader(accountName: Text("Nikhil Kumar"), accountEmail: Text("nikhilkumarnk2209@gmail.com"),
            currentAccountPicture:Image.network(
                  "https://drive.google.com/file/d/10195lDsU-_Y9RRR7tPJ_kSvoHy88z9pD/view?usp=sharing"
              ),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.add_call),
              title: Text("Contact us"),
              subtitle: Text("We are there"),
              trailing: Icon(Icons.add_call),
            ),
            ListTile(
              leading: Icon(Icons.add_location_alt),
              title: Text("Reach us"),
              subtitle: Text("Our Location"),
              trailing: Icon(Icons.add_location_alt,
            ),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        myText = _nameController.text;
        setState(() {

        });
      },
      child: Icon(Icons.refresh),
      ),
    );
  }
}





