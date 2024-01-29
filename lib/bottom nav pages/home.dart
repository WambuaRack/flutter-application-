import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/posts.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/config/approutes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: Toolbar(title: "RACKCHATT", actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Approutes.nearby);
            },
            icon: Icon(Icons.my_location),
          )
        ]),
        body: ListView(
          children: mockUsers(),
        ));
  }
}

List<Widget> mockUsers() {
  List<Widget> users = [];
  for (var i = 0; i < 1000; i++) {
    users.add(PostItem());
  }
  return users;
}
