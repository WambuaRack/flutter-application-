import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/post_item.dart';
import 'package:kitengela/COMPONENTS/posts.dart';
import 'package:kitengela/bottom nav pages/Notifications.dart';
import 'package:kitengela/bottom nav pages/messages.dart';
import 'package:kitengela/bottom nav pages/profile.dart';
import 'package:kitengela/COMPONENTS/user_model.dart'; // Import the User class
import 'package:kitengela/COMPONENTS/postitem_model.dart'; // Import the PostItemModel class

class MainPage extends StatefulWidget {
  final User? user;

  const MainPage({Key? key, this.user}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      PostsPage(
          posts: List.generate(
              20,
              (index) => PostItemModel(
                  title: 'Title $index', content: 'Content $index'))),
      MessagesPage(),
      Center(child: Text('Add Page Placeholder')), // Placeholder for Add Page
      NotificationsPage(),
      if (widget.user != null)
        ProfilePage(user: widget.user!), // Use the user if not null
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 2) {
            // If "Add" icon is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    PostNewItemPage(), // Navigate to PostNewItemPage
              ),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
