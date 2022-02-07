import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home Page'),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("about",);
                  Navigator.of(context).pushNamed("about", arguments: "Home");
                },
                child: Text("About Page"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                    "profile",
                    arguments: {
                      "id" : 1,
                      "name" : "Kamrul Hasan",
                      "mobile" : "01874007261",
                      "email" : "kamrulcse7@gmail.com"
                    },
                  );
                },
                child: Text("Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
