import 'package:flutter/material.dart';
import 'package:kitengela/config/app%20strings.dart';
import 'package:kitengela/config/approutes.dart';
import 'package:kitengela/styles/appcolors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(AppStrings.APPNAME),
        ),
        backgroundColor: AppColors.background,
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: const Color.fromARGB(255, 151, 150, 150),
                    filled: true,
                    hintStyle: TextStyle(
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: AppStrings.password,
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey,
                      hintStyle: TextStyle(color: AppColors.black)),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.forgotpassword,
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Approutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.black,
                    ),
                    child: Text(AppStrings.login)),
                SizedBox(
                  height: 16,
                ),
                Text(AppStrings.orsignupwith,
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/g.png',
                          width: 22,
                          height: 22,
                        ),
                        Text(
                          AppStrings.loginwithgoogle,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/fb.jpg',
                          width: 22,
                          height: 22,
                        ),
                        Text(
                          AppStrings.loginwithfacebook,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                Row(children: [
                  Text(AppStrings.donthaveaccount,
                      style: TextStyle(color: Colors.white)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(color: Colors.amber),
                      ))
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
