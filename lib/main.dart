//import "package:js/js.dart";



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login_page.dart';
import 'package:flutter_app/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    title: "TestAPP",
    home: Constants.prefs.getBool("loggedIn")==true?HomePage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context)=>LoginPage(),
      "/home":(context)=>HomePage(),
    },
  ));
}








