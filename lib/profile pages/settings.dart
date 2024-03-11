import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/config/approutes.dart';
import 'package:kitengela/styles/apptext.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 9, 68),
      appBar: Toolbar(
        title: "SETTINGS",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Account Settings", style: AppText.header1),
            onTap: () {
              Navigator.of(context).pushNamed(Approutes.settings);
            },
          ),
          ListTile(
            title: Text("Privacy", style: AppText.header1),
            onTap: () {
              Navigator.of(context).pushNamed(Approutes.privacySettings);
            },
          ),
          ListTile(
            title: Text("About", style: AppText.header1),
            onTap: () {
              Navigator.of(context).pushNamed(Approutes.about);
            },
          ),
          ListTile(
            title: Text("Help & Support", style: AppText.header1),
            onTap: () {
              Navigator.of(context).pushNamed(Approutes.help);
            },
          ),
          ListTile(
            title: Text("Log Out", style: AppText.header1),
            onTap: () {
              Navigator.of(context).pushNamed('/logout');
            },
          ),
        ],
      ),
    );
  }
}
