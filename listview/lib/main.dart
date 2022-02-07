import 'package:flutter/material.dart';

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

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Basic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Vertical',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style),
            label: 'Horizontal',
          ),
        ],
        onTap: (int index) {
          setState(() => this.index = index);
        },
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: getbody(),
      ),
    );
  }

  Widget getbody() {
    if (index == 0) {
      return BasicListView();
    } else if (index == 1) {
      return VerticalListView();
    } else {
      return HorizontalListView();
    }
  }
}

class BasicListView extends StatelessWidget {
  const BasicListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("AB"),
            ),
            title: Text("User Name 1"),
            subtitle: Text("user designation"),
            trailing: Icon(
              Icons.star,
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("AB"),
            ),
            title: Text("User Name 2"),
            subtitle: Text("user designation"),
            trailing: Icon(
              Icons.star,
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("AB"),
            ),
            title: Text("User Name 3"),
            subtitle: Text("user designation"),
            trailing: Icon(
              Icons.star,
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("AB"),
            ),
            title: Text("User Name 4"),
            subtitle: Text("user designation"),
            trailing: Icon(
              Icons.star,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalListView extends StatelessWidget {
  const VerticalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Color(0xFFdddddd),
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("AB"),
            ),
            title: Text("User Name ${index + 1}"),
            subtitle: Text("User designation"),
            trailing: Icon(
              Icons.star,
              color: Colors.orange,
            ),
          );
        },
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index){
          return Container(
            height: 50.0,
            width: 100.0,
            child: ListTile(
              title: Text("User ${index+1}"),
            ),
          );
        },
      ),
    );
  }
}
