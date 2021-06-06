//import "package:js/js.dart";

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login_page.dart';

import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    title: "TestAPP",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context)=>LoginPage(),
      "/home":(context)=>HomePage(),
    },
  ));
}








