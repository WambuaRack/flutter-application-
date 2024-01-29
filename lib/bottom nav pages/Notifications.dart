import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'NOTIFICATIONS'),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(" I LOVE YOU RACK")],
          )
        ],
      ),
    );
  }
}
