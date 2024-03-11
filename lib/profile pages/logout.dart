import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/main%20pages/login.dart';
import 'package:kitengela/styles/apptext.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Log Out",
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate to login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Are you sure you want to log out?",
            style: AppText.subtitle1,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}
