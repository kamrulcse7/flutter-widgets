import 'package:flutter/material.dart';
import 'package:name_route/pages/about.dart';
import 'package:name_route/pages/profile.dart';

import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: Home(),
      // initialRoute: "/",
      routes: {
        "/" :(context) => Home(),
        "/about": (context) => About(),
        "/profile": (context) => Profile(),
      },
    );
  }
}
