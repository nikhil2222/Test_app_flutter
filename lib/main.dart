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
class HomePage extends StatelessWidget { //stl
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome app"), //title of app
      ),
      body: Container(),
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
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.edit),
      ),
    );
  }
}





