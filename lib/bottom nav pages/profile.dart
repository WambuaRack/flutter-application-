import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/COMPONENTS/useravatar.dart';
import 'package:kitengela/config/approutes.dart';
import 'package:kitengela/styles/apptext.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 9, 68),
      appBar: Toolbar(
        title: "PROFILE",
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            Icon(Icons.more_vert_rounded);
            return [
              PopupMenuItem(
                onTap: () {
                  Navigator.of(context).pushNamed(Approutes.editprofile);
                },
                child: Text("Edit"),
              ),
              PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushNamed('/logout');
                  },
                  child: Text("Log Out")),
              PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushNamed('/settings');
                  },
                  child: Text("settings"))
            ];
          })
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "WAMBUA SATYER",
            style: AppText.header2,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "MIAMI",
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "4567",
                    style: AppText.header2,
                  ),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text(
                    "47",
                    style: AppText.header2,
                  ),
                  Text("Posts")
                ],
              ),
              Column(
                children: [
                  Text(
                    "467",
                    style: AppText.header2,
                  ),
                  Text("Following")
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
          Text("ggdgdfgdfgdgg")
        ],
      ),
    );
  }
}
