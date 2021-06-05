import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      currentAccountPicture :CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1622725573578-fd290ffba9ea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80"
        ),
      )

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
);
  }
}
