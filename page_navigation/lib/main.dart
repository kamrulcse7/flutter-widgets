import 'package:flutter/material.dart';
import 'package:page_navigation/pages/page1.dart';

import 'pages/page2.dart';
import 'pages/page3.dart';
import 'pages/page4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Kamrul Hasan"),
              accountEmail: Text("kamrulcse7@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("KH"),
              ),
              otherAccountsPictures: [
                Icon(Icons.settings),
                Icon(Icons.favorite),
              ],
            ),
            ListTile(
              title: Text("Page 1"),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.favorite),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Page 2"),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.favorite),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Page 3"),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.favorite),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Page 4"),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.favorite),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page4(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
