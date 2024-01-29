import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/styles/apptext.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "MESSAGES",
      ),
      backgroundColor: const Color.fromARGB(255, 47, 33, 243),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "MICHAEL",
                style: AppText.subtitle1,
              )),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          Divider(
            height: 84,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
