import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/styles/apptext.dart';

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 9, 68),
      appBar: Toolbar(
        title: "Privacy Settings",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Options",
              style: AppText.header1,
            ),
            SizedBox(height: 20),
            PrivacyOption(
              title: "Share My Data",
              description:
                  "Allow the app to share your data with third parties.",
            ),
            SizedBox(height: 20),
            PrivacyOption(
              title: "Location Services",
              description: "Enable location services for the app.",
            ),
            SizedBox(height: 20),
            PrivacyOption(
              title: "Public Profile",
              description: "Make your profile information visible to everyone.",
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacyOption extends StatelessWidget {
  final String title;
  final String description;

  const PrivacyOption({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppText.subtitle1,
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: AppText.body1,
        ),
        SizedBox(height: 12),
        Switch(
          value: true, // Replace with logic to determine the actual value
          onChanged: (newValue) {
            // Implement logic to update the setting
          },
        ),
        Divider(color: Colors.white),
      ],
    );
  }
}
