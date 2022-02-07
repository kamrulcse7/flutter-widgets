import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
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

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 4,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("App Bar"),
        centerTitle: true,
        // elevation: 30.0,
        // shadowColor: Colors.red,
        // toolbarOpacity: 0.5,
        toolbarHeight: 40.0,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.favorite),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        bottom: TabBar(
          controller: _tabController, 
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.account_circle),
              text: "Profile",
            ),
          Icon(Icons.travel_explore),
          Icon(Icons.shopping_bag),
        ]),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(15.0),
        //     bottomRight: Radius.circular(15.0),
        //   ),
        // ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Home")),
          Center(child: Text("Profile")),
          Center(child: Text("Travel")),
          Center(child: Text("Shopping")),
        ],
      ),
    );
  }
}
