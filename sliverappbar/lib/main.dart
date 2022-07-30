import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Kamrul Hasan"),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              users("Kamrul Hasan", "B.Sc. in CSE"),
              users("Arafat Molla", "B.Sc. in CSE"),
              users("Hasan Mahmud", "B.Sc. in CSE"),
              users("Rakib Mollan", "B.Sc. in CSE"),
              users("Fahad Akib", "B.Sc. in CSE"),
              users("Kamrul Hasan", "B.Sc. in CSE"),
              users("Arafat Molla", "B.Sc. in CSE"),
              users("Hasan Mahmud", "B.Sc. in CSE"),
              users("Rakib Mollan", "B.Sc. in CSE"),
              users("Fahad Akib", "B.Sc. in CSE"),
              users("Kamrul Hasan", "B.Sc. in CSE"),
              users("Arafat Molla", "B.Sc. in CSE"),
              users("Hasan Mahmud", "B.Sc. in CSE"),
              users("Rakib Mollan", "B.Sc. in CSE"),
              users("Fahad Akib", "B.Sc. in CSE"),
            ]),
          ),
        ],
      ),
    );
  }

  Widget users(
    String? name,
    String? sub_title,
    ){
    return ListTile(
      title: Text("$name"),
      subtitle: Text("$sub_title"),
      leading: CircleAvatar(
        child: Text("${name![0]}"),
      ),
      trailing: Icon(Icons.arrow_forward),
    );
  }
}
