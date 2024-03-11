import 'package:kitengela/COMPONENTS/signup.dart';
import 'package:kitengela/main pages/login.dart';
import 'package:kitengela/main pages/main_page.dart';
import 'package:kitengela/nearbypage.dart';
import 'package:kitengela/profile pages/edit_profile.dart';
import 'package:kitengela/profile pages/logout.dart';
import 'package:kitengela/COMPONENTS/user_model.dart'; // Correct import for User class

class Approutes {
  static final pages = {
    login: (context) => LoginPage(),
    signup: (context) => SignupPage(), // Adding the signup route
    main: (context) => MainPage(
          user: User(
            name: 'John Doe', // Replace with actual user details
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
    signup: (context) => SignupPage(),
  };

  static const login = '/';
  static const signup = '/signup'; // Define the signup route path
  static const home = '/home';
  static const main = '/main';
  static const editprofile = '/edit';
  static const logout = '/logout';
  static const nearby = '/nearby';
}
