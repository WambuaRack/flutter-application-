import 'package:flutter/material.dart';
import 'package:kitengela/config/app_strings.dart';
import 'package:kitengela/config/approutes.dart';
import 'package:kitengela/styles/appcolors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Center(child: Text(AppStrings.appName)),
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).viewInsets.bottom,
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  style:
                      TextStyle(color: Colors.black), // Set text color to black
                  decoration: InputDecoration(
                    hintText: AppStrings.email,
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
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Perform signup logic
                    // After successful signup, navigate to the main page
                    Navigator.of(context).pushReplacementNamed(Approutes.main);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primary,
                    onPrimary: AppColors.black,
                  ),
                  child: Text(AppStrings.signup),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.alreadyHaveAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to login page
                        Navigator.of(context)
                            .pushReplacementNamed(Approutes.login);
                      },
                      child: Text(
                        AppStrings.login,
                        style: TextStyle(color: AppColors.amber),
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
