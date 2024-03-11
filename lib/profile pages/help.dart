import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/styles/apptext.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 9, 68),
      appBar: Toolbar(
        title: "Help & Support",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Help & Support",
              style: AppText.header1,
            ),
            SizedBox(height: 20),
            Text(
              "If you need assistance or have any questions, please contact us at:",
              style: AppText.body1,
            ),
            SizedBox(height: 20),
            Text(
              "Email: support@example.com",
              style: AppText.body1,
            ),
            SizedBox(height: 10),
            Text(
              "Phone: +1234567890",
              style: AppText.body1,
            ),
            SizedBox(height: 20),
            Text(
              "Our support team will be happy to assist you.",
              style: AppText.body1,
            ),
          ],
        ),
      ),
    );
  }
}
