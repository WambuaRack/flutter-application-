import 'package:flutter/material.dart';
import 'package:kitengela/config/app_strings.dart';
import 'package:kitengela/config/approutes.dart';
import 'package:kitengela/styles/appcolors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(AppStrings.appName),
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.username,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintStyle: TextStyle(color: AppColors.black),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: AppStrings.password,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintStyle: TextStyle(color: AppColors.black),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Approutes.main);
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.primary,
                  onPrimary: AppColors.black,
                ),
                child: Text(AppStrings.login),
              ),
              SizedBox(height: 16),
              Text(
                AppStrings.orSignupWith,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/fb.jpg',
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(width: 8),
                    Text(AppStrings.loginWithGoogle),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/fb.jpg',
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(width: 8),
                    Text(AppStrings.loginWithFacebook),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.dontHaveAccount,
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.signup,
                      style: TextStyle(color: AppColors.amber),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
