import 'package:kitengela/bottom%20nav%20pages/home.dart';
import 'package:kitengela/main%20pages/login.dart';
import 'package:kitengela/main%20pages/main_page.dart';
import 'package:kitengela/nearbypage.dart';
import 'package:kitengela/profile%20pages/edit_profile.dart';
import 'package:kitengela/profile%20pages/logout.dart';

class Approutes {
  static final pages = {
    login: (conext) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editprofile: (context) => EditProfilePage(),
    logout: (context) => LogoutPage(),
    nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';

  static const main = '/main';

  static const editprofile = '/edit';
  static const logout = '/logout';
  static const nearby = '/nearby';
}
