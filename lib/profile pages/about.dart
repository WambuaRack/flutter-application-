import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/styles/apptext.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 9, 68),
      appBar: Toolbar(
        title: "About",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About App",
              style: AppText.header1,
            ),
            SizedBox(height: 20),
            Text(
              "This app is designed to...",
              style: AppText.body1,
            ),
            SizedBox(height: 20),
            Text(
              "Version: 1.0.0",
              style: AppText.body1,
            ),
            SizedBox(height: 20),
            Text(
              "Developer: Your Name",
              style: AppText.body1,
            ),
            SizedBox(height: 20),
            Text(
              "Contact: your.email@example.com",
              style: AppText.body1,
            ),
          ],
        ),
      ),
    );
  }
}
