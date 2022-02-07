import 'package:flutter/material.dart';

import 'about.dart';

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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home Page"),
          
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => About(
                    page: "Home",
                  ),
                ),
              );
            },
            child: Text("About"),
          ),
        ],
      )),
    );
  }
}
