import 'package:flutter/material.dart';
import 'package:kitengela/config/app_strings.dart';
import 'package:kitengela/config/approutes.dart';
import 'package:kitengela/styles/appcolors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            constraints:
                BoxConstraints(maxWidth: 400), // Set max width for content
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppStrings.appName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Change text color to white
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextField(
                  style:
                      TextStyle(color: Colors.black), // Set text color to black
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hintStyle: TextStyle(color: AppColors.black),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  style:
                      TextStyle(color: Colors.black), // Set text color to black
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hintStyle: TextStyle(color: AppColors.black),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.forgotPassword,
                    style: TextStyle(color: AppColors.primary),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Approutes.main);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primary),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.black),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  child: Text(
                    AppStrings.login,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(color: AppColors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Approutes.signup);
                      },
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
