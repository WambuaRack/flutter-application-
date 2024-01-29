import 'package:flutter/material.dart';
import 'package:kitengela/bottom%20nav%20pages/Notifications.dart';
import 'package:kitengela/bottom%20nav%20pages/home.dart';
import 'package:kitengela/bottom%20nav%20pages/messages.dart';
import 'package:kitengela/bottom%20nav%20pages/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'fav'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Nts'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'eee'),
        ],
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromARGB(255, 1, 1, 5),
      ),
    );
  }

  final pages = [
    HomePage(),
    MessagesPage(),
    Center(),
    NotificationsPage(),
    ProfilePage()
  ];
}
