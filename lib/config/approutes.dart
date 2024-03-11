import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/signup.dart';
import 'package:kitengela/main pages/login.dart';
import 'package:kitengela/main pages/main_page.dart';
import 'package:kitengela/nearbypage.dart';
import 'package:kitengela/profile pages/edit_profile.dart';
import 'package:kitengela/profile pages/logout.dart';
import 'package:kitengela/profile pages/settings.dart'; // Import account settings page
import 'package:kitengela/profile pages/privacysettings.dart'; // Import privacy settings page
import 'package:kitengela/profile pages/about.dart'; // Import about page
import 'package:kitengela/profile pages/help.dart'; // Import help page
import 'package:kitengela/COMPONENTS/user_model.dart';

class Approutes {
  static final pages = {
    login: (context) => LoginPage(),
    signup: (context) => SignupPage(),
    main: (context) => MainPage(
          user: User(
            name: 'John Doe',
            username: 'johndoe',
            followersCount: 100,
            postsCount: 50,
            followingCount: 200,
            avatarUrl: 'https://example.com/avatar.jpg',
          ),
        ),
    editprofile: (context) => EditProfilePage(),
    logout: (context) => LogoutPage(),
    nearby: (context) => NearbyPage(),
    settings: (context) => SettingsPage(), // Define account settings route
    // Define notifications route
    privacySettings: (context) =>
        PrivacySettingsPage(), // Define privacy settings route
    about: (context) => AboutPage(), // Define about page route
    help: (context) => HelpPage(), // Define help page route
  };

  static const login = '/';
  static const signup = '/signup';
  static const home = '/home';
  static const main = '/main';
  static const editprofile = '/edit';
  static const logout = '/logout';
  static const nearby = '/nearby';
  static const settings =
      '/account-settings'; // Define account settings route path

  static const privacySettings =
      '/privacysettings'; // Define privacy settings route path
  static const about = '/about'; // Define about page route path
  static const help = '/help'; // Define help page route path
}
