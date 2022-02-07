import 'dart:js';

import 'package:custom_method_widget/login.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "WELCOME TO XYZ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 25),
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: 180.0,
                ),
                SizedBox(height: 10),
                loginMethod(),
                signUpMethod(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Login Button Method Widget
  Widget loginMethod() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "LogIn",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  // Signup button method widget
  Widget signUpMethod() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
