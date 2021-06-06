import 'package:flutter/material.dart';
import 'package:flutter_app/bgimage.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/utils/constant.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children:<Widget> [
                      Form(child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(decoration: InputDecoration(
                                hintText: "Enter User Name",
                                labelText: "UserName"
                            ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),)
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(onPressed: (){
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()))
                       Constants.prefs.setBool("LoggedIn", true);
                        Navigator.pushReplacementNamed(context, "/home");
                      },
                        child: Text("Sign In"),
                        color: Colors.orange,
                        textColor: Colors.white,
                      )
                    ],

                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
